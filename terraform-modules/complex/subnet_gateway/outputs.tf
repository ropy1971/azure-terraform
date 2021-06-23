
output "name" {

  value = azurerm_subnet.Subnet.name

}

output "id" {

  value = azurerm_subnet.Subnet.id

}

output "route_table_name" {

  value = azurerm_route_table.RouteTable.name

}
