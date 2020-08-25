resource "azurerm_storage_account" "StorageAccount" {

    # reference: https://www.terraform.io/docs/providers/azurerm/r/storage_account.html
    
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.ResourceGroup.name
  location                 = azurerm_resource_group.ResourceGroup.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type

  tags = {
    Application = var.tag_application
    Cost_center = var.tag_cost_center
    Entity      = var.tag_entity
    Environment = var.tag_environment
    Location    = var.tag_location
    Owner       = var.tag_owner
    Role        = ""
  }
}