# references: https://www.terraform.io/docs/providers/azurerm/r/public_ip.html 
resource "azurerm_public_ip" "pip" {
  name                                  = "${var.PipName}"
  resource_group_name                   = "${var.ResourceGroupName}"
  location                              = "${var.Region}"
  allocation_method                     = "Static"
  idle_timeout_in_minutes               = "30"
  depends_on                            = ["azurerm_resource_group.piptesting-rg"]

  tags {

  } 
}