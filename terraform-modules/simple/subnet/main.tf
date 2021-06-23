
resource "azurerm_subnet" "Subnet" {

  # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet 

  name                 = var.subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = [var.subnet_address_prefix]

}
