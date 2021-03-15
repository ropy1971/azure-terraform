
resource "azurerm_storage_container" "StorageContainer" {

    # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_container

  name                  = var.storage_container_name
  storage_account_name  = var.storage_account_name
  container_access_type = var.container_access_type

}
