resource "azurerm_resource_group" "nimbus_rg" {
  name     = var.resource_group_name
  location = var.location
}
