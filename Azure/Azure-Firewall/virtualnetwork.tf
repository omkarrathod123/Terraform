resource "azurerm_virtual_network" "practiv-vnet" {
  name = "${var.name}-virtual-network"
  address_space = [ "10.0.0.0/16" ]
  location = var.location
  resource_group_name = azurerm_resource_group.Practic-Resource-Group.name
}
resource "azurerm_subnet" "practic-subnet" {
  name = var.firewallsubnet
  resource_group_name = azurerm_resource_group.Practic-Resource-Group.name
  virtual_network_name = azurerm_virtual_network.practiv-vnet.name
  address_prefixes = [ "10.0.1.0/24" ]
}
resource "azurerm_public_ip" "practic-pip" {
  name = "${var.name}-public-ip"
  location = var.location
  resource_group_name = azurerm_resource_group.Practic-Resource-Group.name
  allocation_method = "Static"
  sku = "Standard"
}