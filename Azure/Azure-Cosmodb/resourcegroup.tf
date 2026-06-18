resource "azurerm_resource_group" "practic-resource-group" {
  name = "${var.name}-rg"
  location = var.location
}