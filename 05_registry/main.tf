# source: https://registry.terraform.io/modules/Azure/database/azurerm

module "sql-database" {
  source              = "Azure/database/azurerm"
  resource_group_name = "mms-dresden-db"
  location            = "westeurope"
  db_name             = "mms-dresden-db01"
  sql_admin_username  = "mradministrator"
  sql_password        = "P@ssw0rd12345!"

  tags             = {
    environment = "dev"
    costcenter  = "it"
  }

}