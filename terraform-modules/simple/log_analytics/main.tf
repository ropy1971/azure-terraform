
resource "azurerm_log_analytics_workspace" "LogAnalyticsWorkspace" {

    # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace 

  name                  = var.log_analytics_workspace_name
  resource_group_name   = var.resource_group_name
  location              = var.resource_group_location
  sku                   = var.log_analytics_workspace_sku
  retention_in_days     = var.log_analytics_workspace_retention

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
