
resource "azurerm_network_interface" "VirtualMachineNic" {

  # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface 

  name                = var.virtual_machine_nic_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location

  ip_configuration {

    name                          = var.virtual_machine_ip_configuration_name
    subnet_id                     = var.virtual_machine_nic_subnet
    private_ip_address_allocation = "Static"
    private_ip_address            = var.virtual_machine_nic_ip_address

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


