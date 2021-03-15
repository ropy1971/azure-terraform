
resource "azurerm_sql_database" "SQLDatabase" {

  # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/sql_database

  name                = var.sql_database_name

  resource_group_name = var.resource_group_name
  location            = var.resource_group_location

  server_name         = var.sql_server_name

  # extended_auditing_policy {

  #   storage_endpoint                        = var.storage_endpoint
  #   storage_account_access_key              = var.storage_access_key
  #   storage_account_access_key_is_secondary = var.storage_account_access_key_is_secondary
  #   retention_in_days                       = var.retention
  
  # }

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