resource "azurerm_resource_group" "KubernetesResourceGroup" {

  # role: 
  # references: https://www.terraform.io/docs/providers/azurerm/r/resource_group.html 

  name     = var.kubernetes_cluster_resource_group_name
  location = var.region

  tags = {
    Application = var.tag_application
    Cost_center = var.tag_cost_center
    Entity      = var.tag_entity
    Environment = var.tag_environment
    Location    = var.tag_location
    Owner       = var.tag_owner
    Role        = ""
  }
}