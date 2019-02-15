# https://www.terraform.io/docs/providers/azurerm/r/automation_account.html 

resource "azurerm_automation_account" "automation-account" {
  name                              = "${var.AutomationAccountName}"
  location                          = "${var.Region}"
  resource_group_name               = "${var.ResourceGroupName}" 
  depends_on                        = ["azurerm_resource_group.aatesting-rg"] 

  sku {
      name                          = "Basic"
    }

}