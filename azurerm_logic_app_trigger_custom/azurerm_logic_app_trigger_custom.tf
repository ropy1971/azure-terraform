resource "azurerm_logic_app_trigger_custom" "test" {
  name         = "example-trigger"
  logic_app_id = "${azurerm_logic_app_workflow.test.id}"

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
