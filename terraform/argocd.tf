data "kubectl_file_document" "namespace" {
    content = file("../manifests/argo-cd/namespace.yaml")
}
data "kubectl_file_document" "argocd" {
    content = file("../manifests/argo-cd/install.yaml")
}