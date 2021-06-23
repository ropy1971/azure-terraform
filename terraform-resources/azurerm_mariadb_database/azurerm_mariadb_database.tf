# reference: https://www.terraform.io/docs/providers/azurerm/r/mariadb_database.html 

resource "azurerm_mariadb_database" "mariadb-db" {
  name                                      = "${var.mariadb_db_name}"
  resource_group_name                       = "${azurerm_resource_group.rg.name}"
  server_name                               = "${azurerm_mariadb_server.mariadb-server.name}"
  charset                                   = "utf8"
  collation                                 = "utf8_general_ci"
}
