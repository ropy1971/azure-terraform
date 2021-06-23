
output "name" {

    value = data.azurerm_resource_group.ResourceGroup.name

}

output "location" {

    value = data.azurerm_resource_group.ResourceGroup.location

}
