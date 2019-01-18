resource "azurerm_subnet" "testing-subnet01" {
    name                  = "10.0.1.0-subnet"
    resource_group_name   = "${var.AzureResourceGroupName}"
    virtual_network_name  = "${azurerm_virtual_network.testing-vnet.name}" 
    address_prefix        = "10.0.1.0/24"
}

resource "azurerm_subnet" "testing-subnet02" {
    name                  = "10.0.2.0-subnet"
    resource_group_name   = "${var.AzureResourceGroupName}"
    virtual_network_name  = "${azurerm_virtual_network.testing-vnet.name}" 
    address_prefix        = "10.0.2.0/24"
}

resource "azurerm_subnet" "testing-subnet03" {
    name                  = "10.0.3.0-subnet"
    resource_group_name   = "${var.AzureResourceGroupName}"
    virtual_network_name  = "${azurerm_virtual_network.testing-vnet.name}" 
    address_prefix        = "10.0.3.0/24"
}
