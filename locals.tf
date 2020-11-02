locals {
  common_tags = {
    Environment = var.environment
    Application = var.application
    Creator     = var.creator
    Repo        = var.repo
    Infra       = var.infra
  }

  tier_map = {
    "GeneralPurpose"  = "GP"
    "Basic"           = "B"
    "MemoryOptimized" = "MO"
  }
}

data "azurerm_subscription" "primary" {}

data "azurerm_client_config" "client" {}

data "azurerm_role_definition" "builtin_reader" {
  name = "Reader"
}

data "azurerm_role_definition" "admin" {
  name = "Owner"
}