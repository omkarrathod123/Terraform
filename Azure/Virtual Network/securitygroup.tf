resource "azurerm_network_security_group" "Practic-Network-Security-Group" {
  name = var.NameNSG
  location = var.Location
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