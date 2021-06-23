
resource "azurerm_route_table" "RouteTable" {

  name                          = var.route_table_name
  
  location                      = var.resource_group_location
  resource_group_name           = var.resource_group_name

  disable_bgp_route_propagation = false

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
