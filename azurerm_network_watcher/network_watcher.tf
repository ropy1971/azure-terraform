# references: https://www.terraform.io/docs/providers/azurerm/r/network_watcher.html
resource "azurerm_network_watcher" "network_watcher" {
  name                                      = "nwwatcher"
  location                                  = "${azurerm_resource_group.rg.location}"
  resource_group_name                       = "${azurerm_resource_group.rg.name}"
}
