
resource "azurerm_storage_account" "storage" {
  name                          = "ausvic"
  resource_group_name           = "tfstate"
  location                      = "eastus"
  account_tier                  = "Standard"
  account_replication_type      = "LRS"
  account_kind                  = "StorageV2"
  public_network_access_enabled = true

}


resource "azurerm_storage_container" "example" {
  name                  = "tfstate"
  storage_account_id    = azurerm_storage_account.storage.id
  container_access_type = "private"
}

