
resource "azurerm_network_security_group" "SubnetNetworkSecurityGroup" {

  # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group

  name                = var.network_security_group_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location

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

resource "azurerm_subnet_network_security_group_association" "SubnetNetworkSecurityGroupAssociation" {

  # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet_network_security_group_association 

  subnet_id = var.subnet_id
  network_security_group_id = azurerm_network_security_group.SubnetNetworkSecurityGroup.id

}
