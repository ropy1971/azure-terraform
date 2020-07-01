# references: https://www.terraform.io/docs/providers/azurerm/r/storage_account.html

resource "azurerm_storage_account" "resourcessa288" {
  name                                  = "${var.StorageAccountName}"
  resource_group_name                   = "${var.ResourceGroupName}"
  location                              = "${var.Region}"
  account_tier                          = "standard"
  account_kind                          = "StorageV2" 
  account_replication_type              = "LRS"
  enable_https_traffic_only             = "true"
  depends_on                            = ["azurerm_resource_group.sandboxtesting-rg"]
  
  #network_rules {
    #ip_rules                          = []
    #virtual_network_subnet_ids        = []
  #}

  tags {
    Testing                            = "${var.TagTesting}"
  }
}
