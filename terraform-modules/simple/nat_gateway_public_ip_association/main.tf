
resource "azurerm_nat_gateway_public_ip_association" "NATGatewayPublicIpAssociation" {

    # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/nat_gateway_public_ip_association

  nat_gateway_id       = var.nat_gateway_id
  public_ip_address_id = var.public_ip_address_id

}
