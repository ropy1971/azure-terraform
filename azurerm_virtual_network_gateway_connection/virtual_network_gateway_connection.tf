resource "azurerm_virtual_network_gateway_connection" "onpremise" {
  name                = "onpremise"
  location            = "${azurerm_resource_group.test.location}"
  resource_group_name = "${azurerm_resource_group.test.name}"

  type                       = "IPsec"
  virtual_network_gateway_id = "${azurerm_virtual_network_gateway.test.id}"
  local_network_gateway_id   = "${azurerm_local_network_gateway.onpremise.id}"

  shared_key = "4-v3ry-53cr37-1p53c-5h4r3d-k3y"
}
