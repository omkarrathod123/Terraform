resource "azurerm_lb" "practic-lb" {
  name = "${var.name}-lb"
  location = var.location
  resource_group_name = azurerm_resource_group.Practic-Resource-Group.name

  frontend_ip_configuration {
    name = "${var.name}-front-ip-lb"
    public_ip_address_id = azurerm_public_ip.practic-public-id.id
  }
  tags = var.tags
}
resource "azurerm_lb_rule" "practic-lb-rule" {
  loadbalancer_id = azurerm_lb.practic-lb.id
  name = "${var.name}-lb-rule"
  protocol = "Tcp"
  frontend_port = 3389
  backend_port = 3389
  frontend_ip_configuration_name = "PublicIPAddress"
}