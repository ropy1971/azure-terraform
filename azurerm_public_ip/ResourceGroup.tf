resource "azurerm_resource_group" "piptesting-rg" {
  name                  = "${var.ResourceGroupName}"
  location              = "${var.Region}"
}
