
resource "random_password" "password" {

  # references: https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password 

  length           = 30
  special          = true
  override_special = " "

}
