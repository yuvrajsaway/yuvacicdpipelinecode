terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.38.1"
    }
  }
}

provider "azurerm" {
    features {}
    subscription_id = "5c83ee41-460c-400b-8120-13a218b61103"
  # Configuration options for the Azure provider
}
