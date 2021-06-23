
resource "azurerm_virtual_machine" "VirtualMachine" {

  # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/windows_virtual_machine 

  name                          = var.virtual_machine_name

  resource_group_name           = var.resource_group_name
  location                      = var.resource_group_location

  network_interface_ids         = [var.virtual_machine_nic_id]
  primary_network_interface_id  = var.virtual_machine_nic_id
  vm_size                       = var.virtual_machine_size
  zones                         = [var.availability_zone]

  delete_os_disk_on_termination = var.delete_on_termination

  storage_image_reference {

    publisher = var.virtual_machine_image_publisher
    offer     = var.virtual_machine_image_offer
    sku       = var.virtual_machine_image_sku
    version   = var.virtual_machine_image_version

  }

  storage_os_disk {

    name              = var.virtual_machine_os_disk_name
    caching           = var.virtual_machine_os_disk_caching
    create_option     = var.virtual_machine_os_disk_create
    managed_disk_type = var.virtual_machine_os_disk_type
    disk_size_gb      = var.virtual_machine_os_disk_size

  }

  os_profile {

    computer_name  = var.virtual_machine_name
    admin_username = var.admin_account
    admin_password = var.admin_password

  }

  os_profile_windows_config {

    provision_vm_agent        = var.provision_vm_agent
    enable_automatic_upgrades = var.enable_automatic_upgrades
    timezone                  = var.time_zone

  }

  boot_diagnostics {

    enabled     = var.boot_diagnostics
    storage_uri = var.storage_account_primary_endpoint
    
  }

  tags = {

    Application       = var.tag_application
    Cost_center       = var.tag_cost_center
    Deployment_method = var.tag_deployment_method
    Entity            = var.tag_entity
    Environment       = var.tag_environment
    Location          = var.tag_location
    Owner             = var.tag_owner
    Role              = var.tag_role
    
  }

}
