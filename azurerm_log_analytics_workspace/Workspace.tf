# references: https://www.terraform.io/docs/providers/azurerm/r/log_analytics_workspace.html 

resource "azurerm_log_analytics_workspace" "test" {
  name                                  = "testing-workspace733"
  location                              = "${var.Region}"
  resource_group_name                   = "${var.ResourceGroupName}"
  sku                                   = "PerGB2018"
  retention_in_days                     = 30
  depends_on                            = ["azurerm_resource_group.testing-rg"] 
}
