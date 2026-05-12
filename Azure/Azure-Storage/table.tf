resource "azurerm_storage_table" "practic-table" {
  name = "${var.name}-table"
  storage_account_name = azurerm_storage_account.practic-storage-account.name
}