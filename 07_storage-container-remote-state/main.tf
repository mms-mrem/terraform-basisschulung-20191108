data "azurerm_storage_account" "rg-demo-tf-state" {
  name                = "exxtfremotestate"
  resource_group_name = "${azurerm_resource_group.rg-demo.name}"
  depends_on          = ["azurerm_storage_account.rg-demo-tfstate"]
}

output "storage_account_primary_access_key" {
  value = "${data.azurerm_storage_account.rg-demo-tf-state.primary_access_key}"
}

resource "azurerm_resource_group" "rg-demo" {
  name     = "rg-demo"
  location = "westeurope"
}

resource "azurerm_storage_account" "rg-demo-tfstate" {
  name                     = "exxtfremotestate"
  location                 = "westeurope"
  resource_group_name      = "${azurerm_resource_group.rg-demo.name}"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "rg-demo-tfstate-demo" {
  name                  = "demo"
  resource_group_name   = "${azurerm_resource_group.rg-demo.name}"
  storage_account_name  = "${azurerm_storage_account.rg-demo-tfstate.name}"
  container_access_type = "private"
}