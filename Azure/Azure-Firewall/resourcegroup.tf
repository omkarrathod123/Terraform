resource "azurerm_resource_group" "Practic-Resource-Group" {
  name = "${var.name}-rg"
  location = var.location
  tags = var.tags
}