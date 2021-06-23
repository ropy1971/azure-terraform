
output "id" {

    value = azurerm_virtual_network_gateway.VirtualNetworkGateway.id

}

output "public_ip_id" {

    value = azurerm_public_ip.PublicIp.id

}
