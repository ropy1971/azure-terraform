resource "azurerm_data_factory" "example" {
    name                                    = "example-df"
    resource_group_name                     = "${azurerm_resource_group.rg.name}"
    location                                = "${azurerm_resource_group.rg.location}"
}
