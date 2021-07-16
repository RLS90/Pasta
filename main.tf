terraform {
  required_version = ">=1.0"
  backend "azurerm" {}

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=2.67.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "x"
  tenant_id       = "x"
  client_id       = "x"
  client_secret   = "x"
}

resource "azurerm_resource_group" "resourcegroup1" {
  name     = "resourcegroup1a"
  location = "Australia Southeast"
}