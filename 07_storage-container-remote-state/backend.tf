# Quelle: http://www.mikaelkrief.com/terraform-remote-backend-azure/

terraform {
  backend "azurerm" {
    storage_account_name     = "mmstfremotestate"
    resource_group_name      = "storage"
    container_name           = "demo"
    key                      = "terraform.tfstate"
    access_key               = "HLwXpoSdHL9SMvHxAaabYe9p0k1K22vcHk7nvGHBHm6KasHqH7+GqpWS6k0HrvDpHIs/bTA7sY2Cnc3LczCW7A=="
  }
}
