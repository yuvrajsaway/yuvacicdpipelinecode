terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.38.1"
    }
  }
   backend "azurerm" {
    resource_group_name   = "DoNotDeleteRg"
    storage_account_name  = "121donotdeletestorage121"        # lowercase only
    container_name        = "tfstate"
    key                   = "yuvaterraform.tfstate"
  }
}

provider "azurerm" {
    features {}
    subscription_id = "5c83ee41-460c-400b-8120-13a218b61103"
  # Configuration options for the Azure provider
}
