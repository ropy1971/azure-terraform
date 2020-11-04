
resource "azurerm_resource_group" "ResourceGroup" {
  
  # references: https://www.terraform.io/docs/providers/azurerm/r/resource_group.html 

  name     = var.resource_group_name
  location = var.region
  
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
