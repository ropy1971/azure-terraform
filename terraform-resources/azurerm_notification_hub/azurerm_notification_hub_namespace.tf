#reference: https://www.terraform.io/docs/providers/azurerm/r/notification_hub_namespace.html 
resource "azurerm_notification_hub_namespace" "notification_hub_namespace" {
  name                                      = "${var.notification_hub_name}"
  resource_group_name                       = "${azurerm_resource_group.rg.name}"
  location                                  = "${azurerm_resource_group.rg.location}"
  namespace_type                            = "${var.namespace_type}"

  sku {
    name                                    = "${var.namespace_sku}"
  }
}
