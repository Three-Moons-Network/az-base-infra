resource "azurerm_resource_group" "tf-storage" {
  name     = "mgt-rg"
  location = var.location
  tags = merge({
    Name = "aks-mgt-rg" },
  local.common_tags)
}

resource "azurerm_resource_group" "aks-rg" {
  name     = "aks-rg"
  location = var.location
  tags = merge({
    Name = "aks-rg" },
  local.common_tags)
}
