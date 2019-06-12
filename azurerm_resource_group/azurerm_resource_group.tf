resource "azurerm_resource_group" "rg" {
  name                                 = "${var.ResourceGroupName}"
  location                             = "${var.Region}"

  tags {
    Testing                            = "${var.TagTesting}"
  }
}
