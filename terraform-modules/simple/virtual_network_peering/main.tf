
resource "azurerm_virtual_network_peering" "VirtualNetworkPeering" {

  # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering 

  name                      = var.peering_name
  resource_group_name       = var.resource_group_name
  virtual_network_name      = var.virtual_network_name
  remote_virtual_network_id = var.virtual_network_id

}
