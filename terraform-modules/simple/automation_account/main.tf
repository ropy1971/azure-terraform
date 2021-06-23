
resource "azurerm_automation_account" "AutomationAccount" {

    # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/automation_account
  
  name                  = var.automation_account_name
  resource_group_name   = var.resource_group_name
  location              = var.resource_group_location
  sku_name              = var.automation_account_sku

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
