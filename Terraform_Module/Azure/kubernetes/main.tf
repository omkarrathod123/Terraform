resource "azurerm_resource_group" "Practic-Resource-Group" {
  name = "${var.name}-rg"
  location = var.location
  tags = var.tags
}
resource "azurerm_kubernetes_cluster" "practic-kubernetes-cluster" {
  name = "${var.name}-kube-cluster"
  location = var.location
  resource_group_name = azurerm_resource_group.Practic-Resource-Group.name
  dns_prefix = "kubeprefix"

  default_node_pool {
    name = "${var.name}-node-pool"
    node_count = 1
    vm_size = var.vm_size
  }
  service_principal {
    client_id = var.service_principal[0]
    client_secret = var.service_principal[1]
  }
  tags = var.tags
  depends_on = [ azurerm_resource_group.Practic-Resource-Group ]
}
resource "azurerm_kubernetes_cluster_node_pool" "practic-node-pool" {
  name = "${var.name}-node-pool"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.practic-kubernetes-cluster.id
  vm_size = var.vm_size
  node_count = var.node_count

  depends_on = [ azurerm_kubernetes_cluster.practic-kubernetes-cluster ]

  tags = var.tags
}