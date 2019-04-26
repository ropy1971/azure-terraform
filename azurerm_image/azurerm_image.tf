resource "azurerm_image" "test" {
  name                = "acctest"
  location            = "West US"
  resource_group_name = "${azurerm_resource_group.test.name}"

  os_disk {
    os_type  = "Linux"
    os_state = "Generalized"
    blob_uri = "{blob_uri}"
    size_gb  = 30
  }
}
