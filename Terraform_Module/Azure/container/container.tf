resource "azurerm_container_group" "practic-container-group" {
  name = "${var.name}-container-group"
  location = var.location
  resource_group_name = azurerm_resource_group.Practic-Resource-Group.name
  ip_address_type = "Public"
  dns_name_label = "aci-lable"
  os_type = "Linux"

  container {
    name = "Linux Test"
    image = "docker pull omkarrathod123/auth-demo:latest"
    cpu = "0.5"
    memory = "1.5"

    ports {
      port = 3000
      protocol = "TCP"
    }
  }
  tags = var.tags
}