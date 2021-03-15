
resource "azurerm_network_security_rule" "example" {

  # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_rule

  name                        = var.network_security_group_rule_name
  priority                    = var.network_security_group_rule_priority
  direction                   = var.network_security_group_rule_direction
  access                      = var.network_security_group_rule_access
  protocol                    = var.network_security_group_rule_protocol
  source_port_range           = var.network_security_group_rule_source_port_range
  destination_port_range      = var.network_security_group_rule_destination_port_range
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example.name
  network_security_group_name = azurerm_network_security_group.example.name

}
