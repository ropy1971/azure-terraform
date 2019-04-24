# reference: https://www.terraform.io/docs/providers/azurerm/r/mysql_server.html 

resource "azurerm_mysql_server" "server" {
    name                                    = "${var.mysql_server_name}"
    resource_group_name                     = "${azurerm_resource_group.rg.name}"
    location                                = "${azurerm_resource_group.rg.location}"

  sku {
    name                                    = "B_Gen5_2"
    tier                                    = "Basic"
    family                                  = "Gen5"
    capacity                                = "2"
 }

  storage_profile {
    storage_mb                              = 5120
    backup_retention_days                   = 7
    geo_redundant_backup                    = "Disabled"
  }

    administrator_login                     = "${var.administrator_account}"
    administrator_login_password            = "${var.administrator_password}"
    version                                 = "5.7"
    ssl_enforcement                         = "Enabled"
}
