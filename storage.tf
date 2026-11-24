resource "azurerm_storage_account" "nimbus_storage" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.nimbus_rg.name
  location                 = azurerm_resource_group.nimbus_rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}


resource "azurerm_storage_container" "nimbus" {
  name                  = "tfstate"
  storage_account_id    = azurerm_storage_account.nimbus_storage.id
  container_access_type = "private"
}
