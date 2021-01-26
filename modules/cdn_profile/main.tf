
resource "azurerm_cdn_profile" "CdnProfile" {

    # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/cdn_profile 

  name                  = var.cdn_profile_name
  resource_group_name   = var.resource_group_name
  location              = var.resource_group_location
  sku_name              = var.cdn_sku

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