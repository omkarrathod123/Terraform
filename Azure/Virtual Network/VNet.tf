resource "azurerm_virtual_network" "Practic-Virtual-Network" {
  name = var.NameVN
  location = var.Location
  resource_group_name = azurerm_resource_group.Practic-Resource-Group.name
  address_space = [ "10.0.0.0/16" ]
  dns_servers = [ "10.0.0.4", "10.0.0.5" ]
  tags = var.Tags
}
resource "azurerm_subnet" "Practic-Subnet" {
  name = "Public-Subnet"
  resource_group_name = azurerm_resource_group.Practic-Resource-Group.name
  virtual_network_name = azurerm_virtual_network.Practic-Virtual-Network.name
  address_prefixes = ["10.0.1.0/24"]
  default_outbound_access_enabled = true
}