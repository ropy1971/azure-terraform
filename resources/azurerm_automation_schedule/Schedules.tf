resource "azurerm_automation_schedule" "resources-automation-schedule-Mon07AM" {
  name                                = "Weekly-Mon-07AM"
  resource_group_name                 = "${var.ResourceGroupName}"
  automation_account_name             = "${var.AutomationAccountName}"
  depends_on                          = ["azurerm_resource_group.aatesting-rg"]
  frequency                           = "Week"
  interval                            = 1
  timezone                            = "Romance Standard Time"
  start_time                          = "2019-02-18T07:00:00+01:00"
  week_days                           = ["Monday"]
  description                         = "weekly Monday 07:00AM"
}

resource "azurerm_automation_schedule" "resources-automation-schedule-11PM" {
  name                                = "Daily-11PM"
  resource_group_name                 = "${var.ResourceGroupName}"
  automation_account_name             = "${var.AutomationAccountName}"
  depends_on                          = ["azurerm_resource_group.aatesting-rg"]
  frequency                           = "Day"
  interval                            = 1
  timezone                            = "Romance Standard Time"
  start_time                          = "2019-02-18T11:00:00+01:00"
  description                         = "everyday 11:00PM"
}
