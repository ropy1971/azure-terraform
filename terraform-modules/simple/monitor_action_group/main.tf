
resource "azurerm_monitor_action_group" "MonitorActionGroup" {

    # references: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_action_group 

    name                = var.monitor_action_group_name
    resource_group_name = var.resource_group_name
    short_name          = var.monitor_action_group_shortname

    email_receiver {

        name          = var.contact_name
        email_address = var.contact_email_address

    }

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
