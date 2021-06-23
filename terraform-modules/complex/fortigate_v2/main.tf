
// storage

resource "azurerm_storage_account" "StorageAccount" {

    // references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account

    resource_group_name       = var.resource_group_name
    location                  = var.resource_group_location

    name                      = var.storage_account_name
    account_tier              = var.storage_account_tier
    account_kind              = var.storage_account_kind
    account_replication_type  = var.storage_account_replication_type
    access_tier               = var.storage_account_access
    enable_https_traffic_only = var.storage_account_https

    tags = {

        Application       = var.tag_application
        Cost_center       = var.tag_cost_center
        Deployment_method = var.tag_deployment_method
        Entity            = var.tag_entity
        Environment       = var.tag_environment
        Location          = var.tag_location
        Msp               = var.tag_msp
        Owner             = var.tag_owner
        Role              = "Storage Account for FortiGate virtual machine diagnostics"

    }

}



// network

resource "azurerm_subnet" "InsideSubnet" {

    // references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet

    resource_group_name  = var.resource_group_name

    name                 = "FORTI-INSIDE-01-SUBNET"
    virtual_network_name = var.virtual_network_name
    address_prefixes     = [var.inside_subnet_address_prefix]

}

resource "azurerm_subnet" "OutsideSubnet" {

    // references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet

    resource_group_name  = var.resource_group_name

    name                 = "FORTI-OUTSIDE-01-SUBNET"
    virtual_network_name = var.virtual_network_name
    address_prefixes     = [var.outside_subnet_address_prefix]

}



// public ip for fortigate virtual machine (outside NIC)

resource "azurerm_public_ip" "PublicIp" {

    // references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip

    resource_group_name = var.resource_group_name
    location            = var.resource_group_location

    name                = var.public_ip_name
    sku                 = "Basic"
    allocation_method   = "Static"

    tags = {

        Application       = var.tag_application
        Cost_center       = var.tag_cost_center
        Deployment_method = var.tag_deployment_method
        Entity            = var.tag_entity
        Environment       = var.tag_environment
        Location          = var.tag_location
        Msp               = var.tag_msp
        Owner             = var.tag_owner
        Role              = "Public IP for FortiGate virtual machine"

    }

}



// network interfaces for fortigate virtual machine

resource "azurerm_network_interface" "VirtualMachineInsideNic" {

    // references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface 

    resource_group_name = var.resource_group_name
    location            = var.resource_group_location

    name                = var.virtual_machine_inside_nic_name

    enable_ip_forwarding = true

    ip_configuration {

        name                          = "ip-configuration-01"
        subnet_id                     = azurerm_subnet.InsideSubnet.id
        private_ip_address_allocation = "Static"
        private_ip_address            = var.virtual_machine_inside_nic_ip_address

    }

    tags = {

        Application       = var.tag_application
        Cost_center       = var.tag_cost_center
        Deployment_method = var.tag_deployment_method
        Entity            = var.tag_entity
        Environment       = var.tag_environment
        Location          = var.tag_location
        Owner             = var.tag_owner
        Msp               = var.tag_msp
        Role              = "Inside NIC for FortiGate virtual machine"
    
    }

}

resource "azurerm_network_interface" "VirtualMachineOutsideNic" {

    // references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface 

    resource_group_name = var.resource_group_name
    location            = var.resource_group_location

    name                = var.virtual_machine_outside_nic_name

    enable_ip_forwarding = true

    ip_configuration {

        name                          = "ip-configuration-01"
        subnet_id                     = azurerm_subnet.OutsideSubnet.id
        private_ip_address_allocation = "Static"
        private_ip_address            = var.virtual_machine_outside_nic_ip_address
        public_ip_address_id          = azurerm_public_ip.PublicIp.id

    }

    tags = {

        Application       = var.tag_application
        Cost_center       = var.tag_cost_center
        Deployment_method = var.tag_deployment_method
        Entity            = var.tag_entity
        Environment       = var.tag_environment
        Location          = var.tag_location
        Owner             = var.tag_owner
        Msp               = var.tag_msp
        Role              = "Outside NIC for FortiGate virtual machine"
    
    }

}



// virtual machine (FortiGate)

resource "azurerm_linux_virtual_machine" "VirtualMachine" {

    // references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine 

    resource_group_name = var.resource_group_name
    location            = var.resource_group_location

    name                = var.fortigate_virtual_machine_name
    size                = "Standard_F4s_v2"
  
    admin_username      = "adminroot"
    admin_password      = var.admin_password
  
    disable_password_authentication = false

    network_interface_ids = [

        azurerm_network_interface.VirtualMachineInsideNic.id,
        azurerm_network_interface.VirtualMachineOutsideNic.id
  
    ]

    os_disk {

        name                  = var.os_disk_name
        caching               = "Read/Write"
        storage_account_type  = ""

    }

    source_image_reference {

        publisher = "fortinet"
        offer     = "fortinet_fortigate-vm_v5"
        sku       = "fortinet_fg-vm"
        version   = var.fortigate_version

    }

    plan {
  
        name = "fortinet_fg-vm"
        product = "fortinet_fortigate-vm_v5"
        publisher = "fortinet"

    }

    boot_diagnostics {

        storage_account_uri = azurerm_storage_account.StorageAccount.primary_blob_endpoint

    }

    tags = {

        Application       = var.tag_application
        Cost_center       = var.tag_cost_center
        Deployment_method = var.tag_deployment_method
        Entity            = var.tag_entity
        Environment       = var.tag_environment
        Location          = var.tag_location
        Owner             = var.tag_owner
        Msp               = var.tag_msp
        Role              = "FortiGate virtual machine"

    }

}




