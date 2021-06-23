
output "name" {

  value = azurerm_subnet.Subnet.name

}

output "id" {

  value = azurerm_subnet.Subnet.id

}

output "network_security_group_name" {

  value = azurerm_network_security_group.NetworkSecurityGroup.name

}

output "route_table_name" {

  value = azurerm_route_table.RouteTable.name

}
