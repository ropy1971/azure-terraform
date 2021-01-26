
resource "azurerm_cdn_endpoint" "CdnEndpoint" {

    # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/cdn_endpoint 

  name                = var.cdn_endpoint_name
  profile_name        = var.cdn_profile_name

  resource_group_name   = var.resource_group_name
  location              = var.resource_group_location

  origin {

    name      = var.origin_name
    host_name = var.hostname

  }

}