resource "azurerm_app_service" "app-service" {
    name                                    = "${var.azure_environment}-app-service"
    resource_group_name                     = "${azurerm_resource_group.resource-group.name}"
    location                                = "${azurerm_resource_group.resource-group.location}"
    app_service_plan_id                     = "${azurerm_app_service_plan.app-service-plan.id}"
}
