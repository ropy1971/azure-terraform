
resource "azurerm_subnet" "Subnet" {

  // references: 

  resource_group_name  = var.resource_group_name

  name                 = "GatewaySubnet" 
  virtual_network_name = var.virtual_network_name
  address_prefixes     = [var.subnet_address_prefix]

}

resource "azurerm_route_table" "RouteTable" {

  // references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/route_table

  location                      = var.resource_group_location
  resource_group_name           = var.resource_group_name

  name                          = var.route_table_name
  disable_bgp_route_propagation = var.disable_bgp_route_propagation

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

resource "azurerm_subnet_route_table_association" "RouteTableAssociation" {

  // references: 

  subnet_id      = azurerm_subnet.Subnet.id
  route_table_id = azurerm_route_table.RouteTable.id

}

