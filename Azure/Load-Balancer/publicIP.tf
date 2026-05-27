resource "azurerm_public_ip" "practic-public-id" {
  name = "${var.name}-public-ip"
  location = var.location
  resource_group_name = azurerm_resource_group.Practic-Resource-Group.name
  allocation_method = "Static"
}