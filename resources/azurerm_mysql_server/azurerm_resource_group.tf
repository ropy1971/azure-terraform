# references: https://www.terraform.io/docs/providers/azurerm/r/resource_group.html 
resource "azurerm_resource_group" "rg" {
  name                                      = "${var.resource_group_name}"
  location                                  = "${var.region}"
}
