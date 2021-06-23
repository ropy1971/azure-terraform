
resource "azurerm_sql_server" "SQLServer" {

  # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/sql_server

  name                          = var.sql_server_name

  resource_group_name           = var.resource_group_name
  location                      = var.resource_group_location
  
  version                       = var.sql_version
  administrator_login           = var.sql_admin_username
  administrator_login_password  = var.sql_admin_password

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
