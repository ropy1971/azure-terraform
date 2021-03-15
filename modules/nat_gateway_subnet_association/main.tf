
resource "azurerm_subnet_nat_gateway_association" "NATGAtewaySubnetAssocation" {

  # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet_nat_gateway_association

  subnet_id      = var.subnet_id
  nat_gateway_id = var.nat_gateway_id

}
