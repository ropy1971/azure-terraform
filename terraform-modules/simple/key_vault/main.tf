
resource "azurerm_key_vault" "KeyVault" {

# references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault

  name                          = var.key_vault_name
  resource_group_name           = var.resource_group_name
  location                      = var.resource_group_location
  enabled_for_disk_encryption   = true
  tenant_id                     = var.tenant_id
  soft_delete_enabled           = true
  soft_delete_retention_days    = 7
  purge_protection_enabled      = false

  sku_name                      = var.key_vault_sku

  tags = {

    Application       = var.tag_application
    Cost_center       = var.tag_cost_center
    Deployment_method = var.tag_deployment_method
    Entity            = var.tag_entity
    Environment       = var.tag_environment
    Location          = var.tag_location
    Owner             = var.tag_owner
    Role              = var.tag_role
    
  }

}