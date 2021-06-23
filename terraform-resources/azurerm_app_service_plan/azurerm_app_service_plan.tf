resource "azurerm_app_service_plan" "app-service-plan" {
    name                                    = "${var.azure_environment}-app-service-plan"
    resource_group_name                     = "${azurerm_resource_group.resource-group.name}"
    location                                = "${azurerm_resource_group.resource-group.location}"

    sku {
        tier = "Standard"
        size = "S1"
    }

    tags {
        application                         = "${var.tag_application}"
        cost_center                         = "${var.tag_cost_center}"
        customer                            = "${var.tag_customer}"
        deployment_method                   = "${var.tag_deployment_method}"
        deployment_version                  = "${var.tag_deployment_version}"
        operator                            = "${var.tag_operator}"
        production                          = "${var.tag_production}"
    }
}