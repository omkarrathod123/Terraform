resource "azurerm_storage_container" "practic-storage-container" {
  name = "${var.name}-storage-container"
  storage_account_id = azurerm_storage_account.practic-storage-account.id
  container_access_type = "private"
}
resource "azurerm_storage_blob" "practic-blob" {
  name = "${var.name}-blob"
  storage_account_name = azurerm_storage_account.practic-storage-account.name
  storage_container_name = azurerm_storage_container.practic-storage-container.name
  type = "Block"
}