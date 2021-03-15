
resource "azurerm_subnet_network_security_group_association" "SubnetNetworkSecurityGroupAssociation" {

  # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet_network_security_group_association 

  subnet_id = var.subnet_id
  network_security_group_id = var.network_security_group_id

}
