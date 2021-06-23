
resource "azurerm_subnet" "Subnet" {

  # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet

  name                 = var.subnet_name
  
  resource_group_name  = var.resource_group_name
  
  virtual_network_name = var.virtual_network_name
  address_prefixes     = [var.subnet_address_prefix]

}

resource "azurerm_network_security_group" "NetworkSecurityGroup" {

  # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group

  name                = var.network_security_group_name
  
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location

  depends_on = [azurerm_subnet.Subnet]

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

resource "azurerm_subnet_network_security_group_association" "SubnetNetworkSecurityGroupAssociation" {

  # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet_network_security_group_association 

  subnet_id = azurerm_subnet.Subnet.id
  network_security_group_id = azurerm_network_security_group.NetworkSecurityGroup.id

}

resource "azurerm_route_table" "RouteTable" {

  # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/route_table

  name                          = var.route_table_name
  
  location                      = var.resource_group_location
  resource_group_name           = var.resource_group_name

  disable_bgp_route_propagation = var.disable_bgp_route_propagation

  depends_on = [azurerm_subnet.Subnet]

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

  subnet_id      = azurerm_subnet.Subnet.id
  route_table_id = azurerm_route_table.RouteTable.id

}
