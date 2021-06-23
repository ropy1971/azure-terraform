
output "storage_account_name" {

  value = azurerm_storage_account.StorageAccount.name

}

output "primary_blob_endpoint" {

  value = azurerm_storage_account.StorageAccount.primary_blob_endpoint

}

/* output "inside_nic_id" {

    value = azurerm_network_interface.VirtualMachineInsideNic.id

}

output "inside_nic_name" {

    value = azurerm_network_interface.VirtualMachineInsideNic.name

}

output "outside_nic_id" {

    value = azurerm_network_interface.VirtualMachineOutsideNic.id

}

output "outside_nic_name" {

    value = azurerm_network_interface.VirtualMachineOutsideNic.name

} */
