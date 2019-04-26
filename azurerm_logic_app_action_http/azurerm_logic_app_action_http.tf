resource "azurerm_logic_app_action_http" "test" {
  name         = "webhook"
  logic_app_id = "${azurerm_logic_app_workflow.test.id}"
  method       = "GET"
  uri          = "http://example.com/some-webhook"
}