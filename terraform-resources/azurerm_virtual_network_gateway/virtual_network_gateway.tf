resource "azurerm_virtual_network_gateway" "sandboxing-vnet-gw" {
    name                                = "${var.AzureEnvironment}-vnet-gw"
    resource_group_name                 = "${azurerm_resource_group.sandboxing-rg.name}"
    location                            = "${var.AzureLocation}"

    type                                = "Vpn"
    vpn_type                            = "RouteBased"  

    active_active                       = false
    enable_bgp                          = false
    sku                                 = "Basic"

    ip_configuration {
        name                            = "vnetGatewayConfig"
        public_ip_address_id            = "${azurerm_public_ip.sandboxing-vnet-gw-pip.id}"
        private_ip_address_allocation   = "Dynamic"
        subnet_id                       = "${azurerm_subnet.sandboxing-GatewaySubnet.id}"
  }


    vpn_client_configuration {  
        address_space = ["10.2.0.0/24"]
  }
}