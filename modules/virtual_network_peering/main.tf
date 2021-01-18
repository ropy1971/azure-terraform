
resource "azurerm_virtual_network_peering" "Hub2Spoke" {

  name                      = var.peering_name
  resource_group_name       = var.resource_group_name
  virtual_network_name      = var.virtual_network_name
  remote_virtual_network_id = var.virtual_network_id

}
