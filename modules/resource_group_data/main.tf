
data "azurerm_resource_group" "ResourceGroup" {

  # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group

  name = var.resource_group_name

}
