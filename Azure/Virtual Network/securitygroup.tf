resource "azurerm_network_security_group" "Practic-Network-Security-Group" {
  name = var.NameNSG
  location = var.Location
  resource_group_name = azurerm_resource_group.Practic-Resource-Group.name
}