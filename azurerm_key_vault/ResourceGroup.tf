resource "azurerm_resource_group" "keyvaulttesting-rg" {
  name                  = "${var.AzureResourceGroupName}"
  location              = "${var.AzureLocation}"
}
