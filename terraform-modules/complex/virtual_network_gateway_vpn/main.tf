
resource "azurerm_public_ip" "PublicIp" {

    # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip

  name                = var.public_ip_name

  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  
  sku                 = var.public_ip_sku
  allocation_method   = var.public_ip_allocation
  zones               = [var.availability_zone]

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



resource "azurerm_virtual_network_gateway" "VirtualNetworkGateway" {

  # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_gateway

  resource_group_name = var.resource_group_name
  location            = var.resource_group_location

  name                = var.virtual_network_gateway_name
  type                = var.virtual_network_gateway_type
  enable_bgp          = var.virtual_network_gateway_bgp
  sku                 = var.virtual_network_gateway_sku

  ip_configuration {

    name                          = "IpConfiguration"
    public_ip_address_id          = azurerm_public_ip.PublicIp.id
    private_ip_address_allocation = "Dynamic"
    subnet_id                     = var.subnet_id

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



/* resource "azurerm_virtual_network_gateway_connection" "VirtualNetworkGatewayConnection" {

  # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_gateway_connection

  resource_group_name         = var.resource_group_name
  location                    = var.resource_group_location

  name                        = var.virtual_network_gateway_connection_name
  type                        = "IPSec"
  virtual_network_gateway_id  = azurerm_virtual_network_gateway.VirtualNetworkGateway.id
  local_network_gateway_id    = var.local_network_gateway_id
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

} */
