Standing up base infra for integration with Terragrunt

1 of 3 repos to for terragrunt provisioned aks cluster with tfstate backend in azure storage.

Needs:
tf-state rg
storage account and container in tf-state rg
networking
variables
provider with backend defined after initial standup of resources.

stand up the base-infra with terraform plan. Use common.env file to export secrets to cli.

Next, add exports to common.env for tf state storage:
export RESOURCE_GROUP_NAME=mgt-rg
export STORAGE_ACCOUNT_NAME=tfstatesasoops
export CONTAINER_NAME=tfstatestorage
export ACCOUNT_KEY=$(az storage account keys list --resource-group $RESOURCE_GROUP_NAME --account-name $STORAGE_ACCOUNT_NAME --query [0].value -o tsv)

add to provider.tf:
terraform {
  backend "azurerm" {
    resource_group_name   = "mgt-rg"
    storage_account_name  = "tfstatesasoops"
    container_name        = "tfstatestorage"
    key                   = "standup-base-infra.tfstate"
  }
}

terraform init will migrate state to azure storage.
rm terraform.tfstate* or terragrunt will complain.

Now, on to terragrunt and implementing the base-resources module.