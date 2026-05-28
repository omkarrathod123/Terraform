resource "azurerm_resource_group" "Practic-Resource-Group" {
  name = "${var.name}-rg"
  location = var.location
  tags = var.tags
}
resource "azurerm_container_group" "practic-container-group" {
  name = "${var.name}-container-group"
  location = var.location
  resource_group_name = azurerm_resource_group.Practic-Resource-Group.name
  ip_address_type = "Public"
  dns_name_label = "aci-lable"
  os_type = var.os_type

  container {
    name = var.container_info.name
    image = var.container_info.image
    cpu = var.container_info.cpu
    memory = var.container_info.memory

    ports {
      port = 3000
      protocol = "TCP"
    }
  }
  tags = var.tags
}