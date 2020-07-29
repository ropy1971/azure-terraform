provider "azurerm" {

  # role: 
  # references: https://www.terraform.io/docs/providers/azurerm/index.html 

  version         = "~> 2.14"
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id

  features {}
}
