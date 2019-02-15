# https://www.terraform.io/docs/providers/azurerm/r/automation_runbook.html 

resource "azurerm_automation_runbook" "example" {
  name                = "Get-AzureVMTutorial"
  location            = "${var.Region}"
  resource_group_name = "${var.ResourceGroupName}"
  account_name        = "${azurerm_automation_account.automation-account.name}"
  log_verbose         = "true"
  log_progress        = "true"
  description         = "This is an example runbook"
  runbook_type        = "PowerShell"

  publish_content_link {
    uri = "https://raw.githubusercontent.com/ropy1971/azure-terraform/azurerm_automation_runbook/runbooks/Get-AzureVMTutorial.ps1"
  }
}