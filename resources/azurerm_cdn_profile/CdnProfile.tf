# https://www.terraform.io/docs/providers/azurerm/r/cdn_profile.html 

resource "azurerm_cdn_profile" "test" {
  name                                  = "exampleCdnProfile"
  location                              = "${var.Region}"
  resource_group_name                   = "${var.ResourceGroupName}"
  sku                                   = "Standard_Verizon"
  depends_on                            = ["azurerm_resource_group.testing-rg"]
}