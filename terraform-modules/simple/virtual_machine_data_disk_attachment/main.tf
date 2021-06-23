
resource "azurerm_virtual_machine_data_disk_attachment" "DataDiskAttachment" {

    # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_machine_data_disk_attachment

  managed_disk_id    = var.data_disk_id
  virtual_machine_id = var.virtual_machine_id
  lun                = var.lun
  caching            = var.caching

}
