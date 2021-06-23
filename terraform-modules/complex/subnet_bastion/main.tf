
resource "azurerm_subnet" "Subnet" {

  resource_group_name  = var.resource_group_name

  name                 = "AzureBastionSubnet"
    
  virtual_network_name = var.virtual_network_name
  address_prefixes     = [var.subnet_address_prefix]

}
