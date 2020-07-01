# https://www.terraform.io/docs/providers/azurerm/r/sql_server.html 

resource "azurerm_sql_server" "sql-server" {
  name                                  = "sql-server-733"
  resource_group_name                   = "${var.ResourceGroupName}"
  location                              = "${var.Region}"
  version                               = "12.0"
  administrator_login                   = "${var.SqlAdminName}"
  administrator_login_password          = "${var.SqlAdminPassword}"
  depends_on                            = ["azurerm_resource_group.testing-rg"]
}
