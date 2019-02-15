# https://www.terraform.io/docs/providers/azurerm/r/sql_database.html

resource "azurerm_sql_database" "sql-server-db" {
  name                              = "sql-server-db"
  resource_group_name               = "${var.ResourceGroupName}"
  location                          = "${var.Region}"
  server_name                       = "${azurerm_sql_server.sql-server.name}"
  edition                           = "Basic"
  depends_on                        = ["azurerm_sql_server.sql-server"]
}
