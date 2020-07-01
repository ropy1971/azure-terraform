provider "azurerm" {
  subscription_id = "${var.SubscriptionID}"
  client_id       = "${var.ClientID}"
  client_secret   = "${var.ClientSecret}"
  tenant_id       = "${var.TenantID}"
}
