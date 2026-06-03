resource "azurerm_resource_group" "Practic-Resource-Group" {
  name = "${var.name}-rg"
  location = var.location
}
resource "azurerm_storage_account" "practic-storage-account" {
  name = "${var.name}-storage-account"
  resource_group_name = azurerm_resource_group.Practic-Resource-Group.name
  location = var.location
  account_tier = var.account_tier
  account_replication_type = "GRS"

  tags = var.tags
}
resource "azurerm_storage_table" "practic-table" {
  name = "${var.name}-table"
  storage_account_name = azurerm_storage_account.practic-storage-account.name
}
resource "azurerm_storage_queue" "practic-queue" {
  name = "${var.name}-queue"
  storage_account_id = azurerm_storage_account.practic-storage-account.id
}
resource "azurerm_storage_container" "practic-storage-container" {
  name = "${var.name}-storage-container"
  storage_account_id = azurerm_storage_account.practic-storage-account.id
  container_access_type = var.container_access_type
}
resource "azurerm_storage_blob" "practic-blob" {
  name = "${var.name}-blob"
  storage_account_name = azurerm_storage_account.practic-storage-account.name
  storage_container_name = azurerm_storage_container.practic-storage-container.name
  type = "Block"
}