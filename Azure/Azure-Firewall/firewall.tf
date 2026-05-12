resource "azurerm_firewall" "practic-firewall" {
  name = "${var.name}-firewall"
  location = var.location
  resource_group_name = azurerm_resource_group.Practic-Resource-Group.name
  sku_name = "${var.name}-firewall-vnet"
  sku_tier = "Standard"

  ip_configuration {
    name = "configuration"
    subnet_id = azurerm_subnet.practic-subnet.id
    public_ip_address_id = azurerm_public_ip.practic-pip.id
  }
}