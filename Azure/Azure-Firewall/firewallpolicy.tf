
resource "azurerm_firewall_policy" "practic-firewall-policy" {
  name = "${var.name}-firewall-policy"
  resource_group_name = azurerm_resource_group.Practic-Resource-Group.name
  location = var.location
  tags = var.tags
}
resource "azurerm_firewall_policy_rule_collection_group" "practic-firewall-policy-collections" {
  name = "${var.name}-firewall-policys"
  firewall_policy_id = azurerm_firewall_policy.practic-firewall-policy.id
  priority = 500

  application_rule_collection {
    name = "${var.name}-app-rules"
    priority = 1000
    action = "Allow"
    rule {
      name = "${var.name}-app-rule1"
      protocols {
        type = "Http"
        port = 80
      }
      protocols {
        type = "Https"
        port = 443
      }
      source_addresses = [ "10.0.0.0/16" ]
      destination_fqdns = ["*.github.com"]
    }
  }

  network_rule_collection {
    name = "${var.name}-network-rules"
    priority = 400
    action = "Allow"
    rule {
      name = "${var.name}-network-rule1"
      protocols = [ "TCP", "UDP" ]
      source_addresses = [ "10.0.0.0/16" ]
      destination_addresses = [ "192.168.0.10" ]
      destination_ports = [ "80", "100-2000" ]
    }
  }

  nat_rule_collection {
    name = "${var.name}-Dnat-rules"
    priority = 300
    action = "Dnat"
    rule {
      name = "${var.name}-Dnat-rule1"
      protocols = [ "TCP", "UDP" ]
      source_addresses = [ "10.0.0.0/16" ]
      destination_address = "192.168.0.69"
      destination_ports = [ "80" ]
      translated_address = "192.168.0.1"
      translated_port = "8080"
    }
  }
  depends_on = [ azurerm_firewall.practic-firewall ]
}