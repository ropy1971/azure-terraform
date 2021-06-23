
resource "azurerm_local_network_gateway" "LocalNetworkGateway" {

    # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/local_network_gateway

  resource_group_name = var.resource_group_name
  location            = var.resource_group_location

  name                = var.local_network_gateway_name

  gateway_address     = var.gateway_ip_address
  address_space       = var.address_space

  bgp_settings {

    asn = var.asn
    bgp_peering_address = var.bgp_peering_address

  }

  tags = {

    Application       = var.tag_application
    Cost_center       = var.tag_cost_center
    Deployment_method = var.tag_deployment_method
    Entity            = var.tag_entity
    Environment       = var.tag_environment
    Location          = var.tag_location
    Msp               = var.tag_msp
    Owner             = var.tag_owner
    Role              = var.tag_role
    
  }

}



resource "azurerm_virtual_network_gateway_connection" "VirtualNetworkGatewayConnection" {

  # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_gateway_connection

  resource_group_name         = var.resource_group_name
  location                    = var.resource_group_location

  name                        = var.virtual_network_gateway_connection_name
  type                        = "IPSec"
  virtual_network_gateway_id  = var.virtual_network_gateway_id
  local_network_gateway_id    = azurerm_local_network_gateway.LocalNetworkGateway.id
  enable_bgp                  = true
  shared_key                  = var.shared_key

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
