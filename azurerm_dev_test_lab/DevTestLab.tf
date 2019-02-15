# https://www.terraform.io/docs/providers/azurerm/r/dev_test_lab.html 

# a Storage Account will be created 
# a KeyVault will be created too

resource "azurerm_dev_test_lab" "example-devtestlab" {
  name                                  = "example-devtestlab"
  location                              = "${var.Region}"
  resource_group_name                   = "${var.ResourceGroupName}"
  depends_on                            = ["azurerm_resource_group.testing-rg"] 
}
