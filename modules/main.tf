provider "azurerm" {
  version         = "~> 2.14"
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id

  features {

  }
}

terraform {
  required_version = ">= 0.12.28"
  
  required_providers {
    azurerm = "~> 2.14"
  }
}

module "ResourceGroup" {
    source = "./resource_group"
    resource_group_name = "Test"
    region = "francecentral"
}
