resource "azurerm_virtual_network" "practic-vnet" {
  name = "${var.name}-vnet"
  location = var.location
  address_space = [ "10.0.0.0/16" ]
  resource_group_name = azurerm_resource_group.Practic-Resource-Group.name
}
resource "azurerm_subnet" "practic-subnet" {
  name = "${var.name}-subnet"
  resource_group_name = azurerm_resource_group.Practic-Resource-Group.name
  virtual_network_name = azurerm_virtual_network.practic-vnet.name
  address_prefixes = [ "10.0.1.0/24" ]
}
resource "azurerm_network_interface" "practic-net-interface" {
  name = "${var.name}-nic"
  location = var.location
  resource_group_name = azurerm_resource_group.Practic-Resource-Group.name

  ip_configuration {
    name = "ipconfig-1"
    subnet_id = azurerm_subnet.practic-subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}