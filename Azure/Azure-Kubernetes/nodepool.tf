resource "azurerm_kubernetes_cluster_node_pool" "practic-node-pool" {
  name = "${var.name}-node-pool"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.practic-kubernetes-cluster.id
  vm_size = var.vm_size
  node_count = 1

  tags = var.tags
}