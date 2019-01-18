resource "azurerm_resource_group" "sandboxtesting-rg" {
  name                  = "${var.AzureResourceGroupName}"
  location              = "${var.AzureLocation}"

  tags {
    Testing             = "${var.TagTesting}"
  }
}
