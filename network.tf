resource "azurerm_resource_group" "example" {
  name     = "my-resources"
  location = "West Europe"
}
module "network" {
  source  = "app.terraform.io/skillfield/network/azurerm"
  version = "3.5.0"
  # insert required variables here
  resource_group_name = "azurerm_resource_group.example.name"
}

