resource "azurerm_resource_group" "Practic-Resource-Group" {
  name = "${var.name}-rg"
  location = var.location
  tags = var.tags
}
resource "azurerm_virtual_network" "practiv-vnet" {
  name = "${var.name}-virtual-network"
  address_space = var.address_space
  location = var.location
  resource_group_name = azurerm_resource_group.Practic-Resource-Group.name
}
resource "azurerm_subnet" "practic-subnet" {
  name = var.firewallsubnet
  resource_group_name = azurerm_resource_group.Practic-Resource-Group.name
  virtual_network_name = azurerm_virtual_network.practiv-vnet.name
  address_prefixes = var.address_prefixes
}
resource "azurerm_public_ip" "practic-pip" {
  name = "${var.name}-public-ip"
  location = var.location
  resource_group_name = azurerm_resource_group.Practic-Resource-Group.name
  allocation_method = "Static"
  sku = "Standard"
}
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