
resource "azurerm_dns_txt_record" "DNSTxtRecord" {

    # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_txt_record

  name                  = var.dns_txt_record_name
  zone_name             = var.dns_zone_name
  resource_group_name   = var.resource_group_name
  ttl                   = 300

  record {

    value = var.dns_txt_record

  }

}
