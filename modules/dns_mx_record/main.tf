
resource "azurerm_dns_mx_record" "DNSMXRecord" {

# references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_mx_record 

  name                  = var.dns_mx_record_name
  zone_name             = var.dns_zone_name
  resource_group_name   = var.resource_group_name
  ttl                   = var.dns_mx_record_ttl

  record {

    preference = var.dns_mx_record_priority
    exchange   = var.dns_mx_record

  }

}
