resource "kind_cluster" "default" {
    name = "${var.cluster_name}--${var.branch}"
    node_image = var.node_image
    wait_for_ready = true
    kind_config {
        kind        = "Cluster"
        api_version = "kind.x-k8s.io/v1alpha4"

        
    }
}