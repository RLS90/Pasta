provider "azurerm" {
  version = "=2.0.0"
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "RemoteState"
    storage_account_name = "auauauremotestate123"
    container_name       = "remstate"
    key                  = "mystate4.tfstate"
  }
}

resource "azurerm_resource_group" "rg-hello-azure" {
  name     = "rg-hello-azure"
  location = "Australia Southeast"
}