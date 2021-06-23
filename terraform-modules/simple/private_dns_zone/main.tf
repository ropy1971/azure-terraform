
resource "azurerm_private_dns_zone" "PrivateDNSZone" {

    # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_zone

  name                = var.dns_zone_name
  resource_group_name = var.resource_group_name

  tags = {

    Application       = var.tag_application
    Cost_center       = var.tag_cost_center
    Deployment_method = var.tag_deployment_method
    Entity            = var.tag_entity
    Environment       = var.tag_environment
    Location          = var.tag_location
    Owner             = var.tag_owner
    Registrar         = var.tag_registrar
    Role              = var.tag_role
    
  }
  
}
