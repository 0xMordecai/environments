resource "kind_cluster" "default" {
    name = "${var.cluster_name}--${var.branch}"
    node_image = var.node_image

}