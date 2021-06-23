
resource "azurerm_virtual_network_gateway_connection" "VirtualNetworkGatewayConnection" {

  # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_gateway_connection

  resource_group_name         = var.resource_group_name
  location                    = var.resource_group_location

  name                        = var.virtual_network_gateway_connection_name
  type                        = "ExpressRoute"
  express_route_circuit_id      = var.express_route_circuit_id
  virtual_network_gateway_id  = var.virtual_network_gateway_id

  tags = {

    Application       = var.tag_application
    Cost_center       = var.tag_cost_center
    Deployment_method = var.tag_deployment_method
    Entity            = var.tag_entity
    Environment       = var.tag_environment
    Location          = var.tag_location
    Owner             = var.tag_owner
    Msp               = var.tag_msp
    Role              = var.tag_role
    
  }

}
