terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.81.0"
    }
  }
   backend "azurerm" {
    resource_group_name  = "rgindia"
    storage_account_name = "ahmedst1728901dt"
    container_name       = "ahmedcontainer"
    key                  = "ahmed.tfstate"
  }

}
provider "azurerm" {
  features {}
}