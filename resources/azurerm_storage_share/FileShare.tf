# references: https://www.terraform.io/docs/providers/azurerm/r/storage_share.html 

resource "azurerm_storage_share" "resources-fs" {
  name                    = "${var.FileShareName}"
  resource_group_name     = "${var.ResourceGroupName}"
  storage_account_name    = "${var.StorageAccountName}"
  quota                   = 500
  depends_on              = ["azurerm_storage_account.resourcessa288"]
}