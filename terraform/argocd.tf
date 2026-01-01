#   create two kubectl_file_documents data sources for the namespace
#   and Argo CD app that point to the corresponding namespace.yaml and install.yaml files
#   within the manifests/argocd directory

data "kubectl_file_documents" "namespace" {
    content = file("../manifests/argo-cd/namespace.yaml")
}
data "kubectl_file_documents" "argocd" {
    content = file("../manifests/argo-cd/install.yaml")
}

resource "kubectl_manifest" "namespace" {
    for_each    = data.kubectl_file_documents.namespace.manifests
    yaml_body   = each.value
    override_namespace  = "argocd"
}
resource "kubectl_manifest" "argocd" {
    depends_on = [ 
        kubectl_manifest.namespace,
    ]
    for_each = data.kubectl_file_documents.argocd.manifests
    yaml_body = each.value
    override_namespace = "argocd"
}