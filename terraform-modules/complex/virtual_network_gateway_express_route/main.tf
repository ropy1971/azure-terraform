
resource "azurerm_public_ip" "PublicIp" {

    # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip

  name                = var.public_ip_name

  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  
  sku                 = var.public_ip_sku
  allocation_method   = var.public_ip_allocation
  zones               = [var.availability_zone]

  tags = {

    application       = var.tag_application
    cost_center       = var.tag_cost_center
    deployment_method = var.tag_deployment_method
    entity            = var.tag_entity
    environment       = var.tag_environment
    location          = var.tag_location
    msp               = var.tag_msp
    owner             = var.tag_owner
    role              = var.tag_role

  }

}



resource "azurerm_virtual_network_gateway" "VirtualNetworkGateway" {

  # references: 

  name                = var.virtual_network_gateway_name

  resource_group_name = var.resource_group_name
  location            = var.resource_group_location

  type     = var.virtual_network_gateway_type

  enable_bgp    = var.virtual_network_gateway_bgp
  sku           = var.virtual_network_gateway_sku

  ip_configuration {

    name                          = "IpConfiguration"
    public_ip_address_id          = azurerm_public_ip.PublicIp.id
    private_ip_address_allocation = "Dynamic"
    subnet_id                     = var.subnet_id

  }

  tags = {

    application       = var.tag_application
    cost_center       = var.tag_cost_center
    deployment_method = var.tag_deployment_method
    entity            = var.tag_entity
    environment       = var.tag_environment
    location          = var.tag_location
    msp               = var.tag_msp
    owner             = var.tag_owner
    role              = var.tag_role

  }

}



resource "azurerm_express_route_circuit" "ExpressRouteCircuit" {

  # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/express_route_circuit

  resource_group_name   = var.resource_group_name
  location              = var.resource_group_location

  name                  = var.express_route_circuit_name

  service_provider_name = var.express_route_circuit_service_provider_name
  peering_location      = var.express_route_circuit_peering_location
  bandwidth_in_mbps     = var.express_route_circuit_bandwidth

  sku {

    tier   = var.express_route_circuit_sku_tier
    family = var.express_route_circuit_sku_family
  
  }

  tags = {

    application       = var.tag_application
    cost_center       = var.tag_cost_center
    deployment_method = var.tag_deployment_method
    entity            = var.tag_entity
    environment       = var.tag_environment
    location          = var.tag_location
    msp               = var.tag_msp
    owner             = var.tag_owner
    role              = var.tag_role
    
  }

}



/* resource "azurerm_virtual_network_gateway_connection" "VirtualNetworkGatewayConnection" {

  # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_gateway_connection

  resource_group_name   = var.resource_group_name
  location              = var.resource_group_location

  name                  = var.virtual_network_gateway_connection_name

  type                        = "ExpressRoute"
  virtual_network_gateway_id  = azurerm_virtual_network_gateway.VirtualNetworkGateway.id
  express_route_circuit_id    = azurerm_express_route_circuit.ExpressRouteCircuit.id

  shared_key = var.shared_key

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

} */
