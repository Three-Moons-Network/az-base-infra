  provider "azurerm" {
  features {}
  version = "~>2.5.0"
}

provider "random" {
  version = "~>2.2"
}

provider "tls" {
  version = "~>2.1"
}

provider "azuread" {
  version = "~>0.8"
}

provider "local" {
  version = "~>1.4"
}
