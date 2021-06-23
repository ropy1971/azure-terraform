resource "azurerm_virtual_network" "sandboxing-vnet" {
    name                = "${var.AzureEnvironmenet}-vnet"
    resource_group_name = "${azurerm_resource_group.sandboxing-rg.name}"
    location            = "${var.AzureLocation}"
    address_space       = ["10.0.0.0/16"]
    depends_on          = ["azurerm_resource_group.sandboxing-rg"]
}
