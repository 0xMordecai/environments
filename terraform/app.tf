data "kubectl_file_documents" "apps" {
    content = file("../manifests/argocd/apps.yaml")
}
