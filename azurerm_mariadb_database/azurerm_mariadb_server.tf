# reference: 
resource "azurerm_mariadb_server" "mariadb-server" {
    name                                    = "${var.mariadb_server_name}"
    resource_group_name                     = "${azurerm_resource_group.rg.name}"
    location                                = "${azurerm_resource_group.rg.location}"

  sku {
    name                                    = "B_Gen5_2"
    capacity                                = 2
    tier                                    = "Basic"
    family                                  = "Gen5"
  }

  storage_profile {
    storage_mb                              = 51200
    backup_retention_days                   = 7
    geo_redundant_backup                    = "Disabled"
  }

    administrator_login                     = "${var.administrator_account}"
    administrator_login_password            = "${var.administrator_password}"
    version                                 = "10.2"
    ssl_enforcement                         = "Enabled"
}
