
resource "azurerm_route" "Route" {

  name                = var.route_name

  resource_group_name = var.resource_group_name
  route_table_name    = var.route_table_name

  address_prefix      = var.route_address_prefix
  next_hop_type       = "Internet"

}
