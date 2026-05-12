resource "azurerm_storage_queue" "practic-queue" {
  name = "${var.name}-queue"
  storage_account_id = azurerm_storage_account.practic-storage-account.id
}