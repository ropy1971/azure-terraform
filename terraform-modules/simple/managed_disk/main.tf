
resource "azurerm_managed_disk" "DataDisk" {

# references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/managed_disk

  name                 = var.disk_name
  location             = var.resource_group_location
  resource_group_name  = var.resource_group_name
  storage_account_type = var.disk_type
  create_option        = var.disk_create_option
  disk_size_gb         = var.disk_size
  zones                = [var.availability_zone]

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
