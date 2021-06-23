resource "azurerm_key_vault" "keyvaulttest" {
  name                        = "${var.AzureKeyVaultName}"
  location                    = "${var.AzureLocation}"
  resource_group_name         = "${var.AzureResourceGroupName}"
  depends_on                  = ["azurerm_resource_group.keyvaulttesting-rg"]

    sku {
        name                  = "${var.AzureKeyVaultSku}"
    }

    tenant_id                 = "${var.AzureTenantID}"

    access_policy {
        tenant_id             = "${var.AzureTenantID}"
        object_id             = "${var.AzureObjectID}"

    key_permissions = [
      "get","list","update","create","import","delete","recover","backup","restore"
    ]

    secret_permissions = [
      "get","list","set","delete","recover","backup","restore"
    ]
  }

access_policy {
        tenant_id             = "${var.AzureTenantID}"
        object_id             = "1e79d6de-28b5-4c6c-9075-a72505daaa49"

    key_permissions = [
      "get","list","update","create","import"
    ]

    secret_permissions = [
      "get","list","set"
    ]
  }

    enabled_for_disk_encryption = true
    
}
