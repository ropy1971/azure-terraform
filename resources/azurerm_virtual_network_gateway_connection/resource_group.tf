resource "azurerm_resource_group" "sandboxing-rg" {
  name                  = "${var.AzureEnvironment}-rg"
  location              = "${var.AzureLocation}"
}
