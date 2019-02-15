# https://www.terraform.io/docs/providers/azurerm/r/automation_runbook.html 

resource "azurerm_automation_runbook" "example" {
  name                                  = "Get-AzureVMTutorial"
  location                              = "${var.Region}"
  resource_group_name                   = "${var.ResourceGroupName}"
  account_name                          = "${azurerm_automation_account.automation-account.name}"
  log_verbose                           = "true"
  log_progress                          = "true"
  description                           = "This is an example runbook"
  runbook_type                          = "PowerShell"
  depends_on                            = ["azurerm_automation_account.automation-account"] 

  publish_content_link {
    uri                                 = "https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/101-automation-runbook-getvms/Runbooks/Get-AzureVMTutorial.ps1"
  }
}