resource "azurerm_virtual_network" "testing-vnet" {
    name                = "${var.AzureVirtualNetworkName}"
    resource_group_name = "${var.AzureResourceGroupName}"
    location            = "${var.AzureLocation}"
    address_space       = ["10.0.0.0/16"]
    depends_on          = ["azurerm_resource_group.sandboxtesting-rg"]

  tags {
    TagTesting             = "${var.TagTesting}"
  }
}
