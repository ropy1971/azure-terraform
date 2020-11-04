
resource "azurerm_storage_account" "sa" {

  # references: https://www.terraform.io/docs/providers/azurerm/r/storage_account.html

  name                      = var.storage_account_name
  resource_group_name       = var.resource_group_name
  location                  = var.resource_group_location
  account_tier              = var.storage_account_tier
  account_kind              = var.storage_account_kind
  account_replication_type  = var.storage_account_type
  access_tier               = var.storage_account_access
  enable_https_traffic_only = var.storage_account_https

  tags = {

    Application       = var.tag_application
    Cost_center       = var.tag_cost_center
    Deployment_method = var.tag_deployment_method
    Entity            = var.tag_entity
    Environment       = var.tag_environment
    Location          = var.tag_location
    Owner             = var.tag_owner
    Role              = var.tag_role
    
  }

}
