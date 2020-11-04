
resource "azurerm_recovery_services_vault" "RecoveryServicesVault" {

    # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/recovery_services_vault

  name                = var.recovery_services_vault_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  sku                 = var.recovery_services_vault_sku

  soft_delete_enabled = true

  tags = {

    tag_application       = var.tag_application
    tag_cost_center       = var.tag_cost_center
    tag_deployment_method = var.tag_deployment_method
    tag_entity            = var.tag_entity
    tag_environment       = var.tag_environment
    tag_location          = var.tag_location
    tag_owner             = var.tag_owner
    tag_role              = var.tag_role

  }

}
