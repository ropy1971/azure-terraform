# https://www.terraform.io/docs/providers/azurerm/r/availability_set.html 

resource "azurerm_availability_set" "test-as" {
  name                                  = "acceptanceTestAvailabilitySet"
  location                              = "${var.Region}"
  resource_group_name                   = "${var.ResourceGroupName}"
  depends_on                            = ["azurerm_resource_group.aatesting-rg"] 
}
