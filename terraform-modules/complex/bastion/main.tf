
resource "azurerm_public_ip" "BastionPublicIp" {

  // references: https://www.terraform.io/docs/providers/azurerm/r/public_ip.html

  resource_group_name = var.resource_group_name
  location            = var.resource_group_location

  name                = var.bastion_public_ip_name
  allocation_method   = "Static"
  sku                 = "Standard"

  tags = {

    Application       = var.tag_application
    Cost_center       = var.tag_cost_center
    Deployment_method = var.tag_deployment_method
    Entity            = var.tag_entity
    Environment       = var.tag_environment
    Location          = var.tag_location
    MSP               = var.tag_msp
    Owner             = var.tag_owner
    Role              = "Public IP for Azure Bastion"

  }

}



resource "azurerm_bastion_host" "BastionHost" {

  // references: https://www.terraform.io/docs/providers/azurerm/r/bastion_host.html 

  resource_group_name = var.resource_group_name
  location            = var.resource_group_location

  name                = var.bastion_name

  ip_configuration {

    name                 = "IPconfiguration"
    subnet_id            = var.azure_bastion_subnet_id
    public_ip_address_id = azurerm_public_ip.BastionPublicIp.id

  }

  tags = {

    Application       = var.tag_application
    Cost_center       = var.tag_cost_center
    Deployment_method = var.tag_deployment_method
    Entity            = var.tag_entity
    Environment       = var.tag_environment
    Location          = var.tag_location
    MSP               = var.tag_msp
    Owner             = var.tag_owner
    Role              = "Bastion host"

  }

}
