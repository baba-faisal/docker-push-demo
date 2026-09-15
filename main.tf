terraform {
  required_version = ">= 1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "hello"
    storage_account_name = "tfstatebaba"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

# This will create a real Resource Group in your Azure account
resource "azurerm_resource_group" "prod_rg" {
  name     = "rg-prod-demo"
  location = "East US"
}
