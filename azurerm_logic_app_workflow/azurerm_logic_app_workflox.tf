resource "azurerm_logic_app_workflow" "test" {
  name                = "workflow1"
  location            = "${azurerm_resource_group.test.location}"
  resource_group_name = "${azurerm_resource_group.test.name}"
}