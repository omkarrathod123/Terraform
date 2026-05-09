resource "azurerm_key_vault_secret" "practic-secret" {
  name = "${var.name}-DB"
  value = "0mK4r@680"
  key_vault_id = azurerm_key_vault.practic-key-vault.id

  depends_on = [ azurerm_key_vault.practic-key-vault ]
}