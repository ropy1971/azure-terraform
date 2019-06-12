resource "azurerm_logic_app_workflow" "logic-app-workflow" {
  name                                      = "${var.environment}-la-workflow"
  resource_group_name                       = "${azurerm_resource_group.rg.name}"
  location                                  = "${azurerm_resource_group.rg.location}"

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