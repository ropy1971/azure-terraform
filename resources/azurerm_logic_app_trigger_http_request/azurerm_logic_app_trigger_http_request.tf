resource "azurerm_logic_app_trigger_http_request" "logic-app-trigger-http" {
    name                                    = "${var.environment}-http-trigger"
    logic_app_id                            = "${azurerm_logic_app_workflow.logic-app-workflow.id}"

  schema = <<SCHEMA
{
    "type": "object",
    "properties": {
        "hello": {
            "type": "string"
        }
    }
}
SCHEMA
}
