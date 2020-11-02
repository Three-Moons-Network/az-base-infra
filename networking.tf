module "network" {
  depends_on          = [azurerm_resource_group.aks-rg]
  source              = "Azure/network/azurerm"
  version             = "3.0.1"
  resource_group_name = azurerm_resource_group.aks-rg.name
  vnet_name           = "aks-vnet"
  address_space       = var.vpc_cidr
  subnet_prefixes     = [var.private1, var.private2]
  subnet_names        = ["private1", "private2"]
  tags                = merge({ Name = "aks-vnet" }, local.common_tags)
}