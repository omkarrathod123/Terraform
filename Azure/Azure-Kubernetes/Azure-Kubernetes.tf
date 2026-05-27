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
}