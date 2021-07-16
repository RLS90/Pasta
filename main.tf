terraform {
  backend "azurerm" {
    resource_group_name  = "RemoteState"
    storage_account_name = "auauauremotestate123"
    container_name       = "remstate"
    key                  = "mystate4.tfstate"
  }
}
 
provider "azurerm" {
  version = "~>2.0"
  features {}
}
 
data "azurerm_client_config" "current" {}
 
resource "azurerm_resource_group" "resourcegroup1" {
  name     = "githubresources"
  location = "Australia Southeast"
}
 