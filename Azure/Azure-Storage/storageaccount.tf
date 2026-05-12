resource "azurerm_storage_account" "practic-storage-account" {
  name = "${var.name}-storage-account"
  resource_group_name = azurerm_resource_group.Practic-Resource-Group.name
  location = var.location
  account_tier = "Standard"
  account_replication_type = "GRS"

  tags = var.tags
}