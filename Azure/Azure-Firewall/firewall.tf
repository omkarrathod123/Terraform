resource "azurerm_firewall" "practic-firewall" {
  name = "${var.name}-firewall"
  location = var.location
  resource_group_name = azurerm_resource_group.Practic-Resource-Group.name
  sku_name = "AZFW_VNet"
  sku_tier = "Standard"

  depends_on = [ azurerm_public_ip.practic-pip ]

  ip_configuration {
    name = "configuration"
    subnet_id = azurerm_subnet.practic-subnet.id
    public_ip_address_id = azurerm_public_ip.practic-pip.id
  }
  tags = var.tags
}