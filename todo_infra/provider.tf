terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }
}

provider "azurerm" {
  features {
    
  }
  subscription_id = "d0d75b6f-d90b-4fa3-b3d5-98e460461aea"
}