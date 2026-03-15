resource "azurerm_resource_group" "rg" {
  name     = "resources-test"
  location = "East US"
}

resource "azurerm_storage_account" "test" {
  name                     = "sa-test-es"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.test.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "TEST"
  }
}

resource "azurerm_storage_container" "test" {
  name                  = "test1"
  storage_account_id    = azurerm_storage_account.test.id
}
