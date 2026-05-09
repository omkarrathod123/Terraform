resource "azurerm_key_vault" "practic-key-vault" {
  name = "${var.name}-keyvault"
  location = var.location
  resource_group_name = azurerm_resource_group.Practic-Resource-Group.name
  enabled_for_disk_encryption = true
  tenant_id = data.azurerm_client_config.practic-clint-current-config.tenant_id
  soft_delete_retention_days = 7
  purge_protection_enabled = false

  sku_name = "standerd"
}