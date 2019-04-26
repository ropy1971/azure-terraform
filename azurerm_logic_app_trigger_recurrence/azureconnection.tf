provider "azurerm" {
    tenant_id                               = "${var.azure_tenant_ID}"
    subscription_id                         = "${var.azure_subscription_ID}"
    client_id                               = "${var.azure_client_ID}"
    client_secret                           = "${var.azure_client_secret}"
}
