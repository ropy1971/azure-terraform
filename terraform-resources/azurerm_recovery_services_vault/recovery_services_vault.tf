resource "azurerm_recovery_services_vault" "vault-westeurope" {
  name                                      = "we-rsv"
  location                                  = "${azurerm_resource_group.rg.location}"
  resource_group_name                       = "${azurerm_resource_group.rg.name}"
  sku                                       = "${var.recovery_sku}"
}
