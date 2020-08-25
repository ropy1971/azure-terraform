resource "azurerm_kubernetes_cluster" "KubernetesCluster" {

    # reference: https://www.terraform.io/docs/providers/azurerm/r/kubernetes_cluster.html

  name                = var.kubernetes_cluster_name
  location            = azurerm_resource_group.ResourceGroup.location
  resource_group_name = azurerm_resource_group.ResourceGroup.name
  dns_prefix          = var.kubernetes_cluster_dns_prefix
  kubernetes_version    = var.kubernetes_cluster_version
  node_resource_group   = azurerm_resource_group.ResourceGroup.name
  sku_tier = var.kubernetes_cluster_sku_tier

  default_node_pool {
    name       = var.kubernetes_cluster_node_name
    node_count = var.kubernetes_cluster_node_count
    vm_size    = var.kubernetes_cluster_node_size
  }

  identity {
    type = var.kubernetes_cluster_identity_type
  }

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
