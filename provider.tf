terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.97.0"
    }
  }
  backend "azurerm" {
  }
}

provider "azurerm" {
  features {}
}