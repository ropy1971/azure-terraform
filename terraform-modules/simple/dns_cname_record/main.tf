
resource "azurerm_dns_cname_record" "DNSCnameRecord" {

# references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_cname_record 

  name                  = var.dns_cname_record_name
  zone_name             = var.dns_zone_name
  resource_group_name   = var.resource_group_name
  ttl                   = 300
  record                = var.dns_cname_record

}
