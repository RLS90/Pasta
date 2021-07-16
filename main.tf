terraform {
  required_version = ">=1.0"
  backend "azurerm" {
    resource_group_name  = "RemoteState"
    storage_account_name = "auauauremotestate123"
    container_name       = "remstate"
    key                  = "mystate6.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=2.67.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg-hello-azure" {
  name     = "GitHubActions2-RG"
  location = "Australia Southeast"
}