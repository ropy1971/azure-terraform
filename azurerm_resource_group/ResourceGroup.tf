resource "azurerm_resource_group" "sandboxtesting-rg" {
  name                                 = "${var.ResourceGroupName}"
  location                             = "${var.Region}"

  tags {
    Testing                            = "${var.TagTesting}"
  }
}
