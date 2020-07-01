resource "azurerm_resource_group" "rg" {
    name                                    = "${var.environment}-rg"
    location                                = "${var.region}"

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
