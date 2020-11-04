
resource "azurerm_subnet" "Subnet" {

  # references: https://www.terraform.io/docs/providers/azurerm/r/subnet.html

  name                 = var.subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = [var.subnet_address_prefix]

}
