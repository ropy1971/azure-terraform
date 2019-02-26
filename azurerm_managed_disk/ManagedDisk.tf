resource "azurerm_managed_disk" "vm-disk-data" {
  name                                  = "vm-disk-data"
  location                              = "${var.Region}"
  resource_group_name                   = "${var.ResourceGroupName}"
  storage_account_type                  = "Standard_LRS"
  create_option                         = "Empty"
  disk_size_gb                          = "64"
  depends_on                            = ["azurerm_resource_group.testing-rg"]

}