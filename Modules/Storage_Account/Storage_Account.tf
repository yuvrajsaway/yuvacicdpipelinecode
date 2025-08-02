resource "azurerm_storage_account" "example" {
  name                     = var.storage-account
  resource_group_name      = var.resource-group
  location                 = var.storage-account-location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}
