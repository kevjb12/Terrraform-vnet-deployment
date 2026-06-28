# Resource group

resource "azurerm_resource_group" "rg" {
  name     = "vnet-rg"
  location = "westus2"
}
