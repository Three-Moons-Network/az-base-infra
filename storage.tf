#state storage
resource "azurerm_storage_account" "state_storage_account" {
  account_replication_type = "GRS"
  account_tier             = "Standard"
  location                 = var.location
  name                     = "tfstatesasoops"
  resource_group_name      = azurerm_resource_group.tf-storage.name
}

# container for state file
resource "azurerm_storage_container" "tfstate_container" {
  name                 = "tfstatestorage"
  storage_account_name = azurerm_storage_account.state_storage_account.name
}


