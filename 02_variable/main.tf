# usage example: terraform apply -var "my_rg_name=customname"

variable "my_rg_name" {
  type    = "string"
  default = "resourcegroup_x"
}

variable "my_rg_location" {
  type    = "string"
  default = "westeurope"
}

resource "azurerm_resource_group" "my_rg" {
  name     = var.my_rg_name
  location = var.my_rg_location
}
