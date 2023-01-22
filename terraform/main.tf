terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"

  backend "azurerm" {
    resource_group_name = "rg_tf_state"
    storage_account_name = "tfstate27751"
    container_name = "tfstate"
    key = "lab.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg-dev-lab" {
  name     = "rg-dev-lab"
  location = "westeurope"
}