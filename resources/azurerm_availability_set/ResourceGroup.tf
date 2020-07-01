# references: https://www.terraform.io/docs/providers/azurerm/r/resource_group.html 

resource "azurerm_resource_group" "aatesting-rg" {
  name                  = "${var.ResourceGroupName}"
  location              = "${var.Region}"
}
