resource "azurerm_logic_app_trigger_custom" "logic-app-trigger-custom" {
  name                                      = "${var.environment}-la-custom-trigger"
  logic_app_id                              = "${azurerm_logic_app_workflow.logic-app-workflow.id}"

  body = <<BODY
{
  "recurrence": {
    "frequency": "Day",
    "interval": 1
  },
  "type": "Recurrence"
}
BODY
}
