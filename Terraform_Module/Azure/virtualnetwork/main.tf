resource "azurerm_resource_group" "Practic-Resource-Group" {
  name = "${var.name}-rg"
  location = var.location
}
resource "azurerm_virtual_network" "Practic-Virtual-Network" {
  name = "${var.name}-vnet"
  location = var.location
  resource_group_name = azurerm_resource_group.Practic-Resource-Group.name
  address_space = var.address_space
  dns_servers = var.dns_servers
  tags = var.Tags
}
resource "azurerm_subnet" "Practic-Subnet" {
  name = "${var.name}-public-subnet"
  resource_group_name = azurerm_resource_group.Practic-Resource-Group.name
  virtual_network_name = azurerm_virtual_network.Practic-Virtual-Network.name
  address_prefixes = var.address_prefixes
  default_outbound_access_enabled = true
}
resource "azurerm_network_security_group" "Practic-Network-Security-Group" {
  name = "${var.name}-nsg"
  location = var.location
  resource_group_name = azurerm_resource_group.Practic-Resource-Group.name
}
resource "azurerm_network_security_rule" "Allow-Outbount" {
    name = "all-Outbound"
    priority = 100
    direction = "Outbound"
    access = "Allow"
    protocol = "Tcp"
    source_port_range = "*"
    destination_port_ranges = ["*"]
    source_address_prefix = "*"
    destination_address_prefix = "*"
    resource_group_name = azurerm_resource_group.Practic-Resource-Group.name
    network_security_group_name = azurerm_network_security_group.Practic-Network-Security-Group.name
}
resource "azurerm_network_security_rule" "Allow-Inbound" {
    name = "all-Inbound"
    priority = 100
    direction = "Inbound"
    access = "Allow"
    protocol = "Tcp"
    source_port_range = "*"
    destination_port_ranges = ["*"]
    source_address_prefix = "*"
    destination_address_prefix = "*"
    resource_group_name = azurerm_resource_group.Practic-Resource-Group.name
    network_security_group_name = azurerm_network_security_group.Practic-Network-Security-Group.name
}