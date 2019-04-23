# reference: https://www.terraform.io/docs/providers/azurerm/r/notification_hub.html 

resource "azurerm_notification_hub" "notification_hub" {
  name                                      = "${var.notification_hub}"
  resource_group_name                       = "${azurerm_resource_group.rg.name}"
  location                                  = "${azurerm_resource_group.rg.location}"
  namespace_name                            = "${azurerm_notification_hub_namespace.notification_hub_namespace.name}"
  depends_on                                = ["azurerm_notification_hub_namespace.notification_hub_namespace"]
}
