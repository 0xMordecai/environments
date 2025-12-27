#   create two kubectl_file_documents data sources for the namespace
#   and Argo CD app that point to the corresponding namespace.yaml and install.yaml files
#   within the manifests/argocd directory

data "kubectl_file_document" "namespace" {
    content = file("../manifests/argo-cd/namespace.yaml")
}
data "kubectl_file_document" "argocd" {
    content = file("../manifests/argo-cd/install.yaml")
}