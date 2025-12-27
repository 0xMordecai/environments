data "kubectl_file_document" "namespace" {
    content = file("../manifests/argo-cd/namespace.yaml")
}