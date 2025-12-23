resource "kind_cluster" "default" {
    name = "${var.cluster_name}--${var.branch}"
    node_image = var.node_image
    kind_config = <<KIONF
    kind: Cluster
    apiVersion: kind.x-k8s.io/v1alpha4
    nodes:
    - role: control-plane
    - role: worker
    KIONF
}