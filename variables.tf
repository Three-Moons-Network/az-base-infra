# tags & basic vars
variable "repo" {
  description = "where code for resource resides"
}

variable "infra" {
  description = "specific code / repo for infrastructure"
}

variable "subscription_id" {}

variable "tenant_id" {}

variable "environment" {}

variable "application" {
  description = "what app this resource is for"
  default     = "learning"
}

variable "creator" {
  description = "what IaC language"
  default     = "Terraform"
}

variable "location" {
  description = "region where resources are created"
  default     = "westus2"
}

# database
variable "admin_username" {}
variable "db_password" {}

# networking
variable "vpc_cidr" {
  description = "network cidr block"
  default     = "10.0.0.0/21"
}

variable "dmz" {
  description = "subnet for dmz"
  default     = "10.0.0.0/24"
}

variable "public1" {
  description = "public subnet1 cidr block"
  default     = "10.0.1.0/24"
}

variable "public2" {
  description = "public2 subnet2 cidr block"
  default     = "10.0.2.0/24"
}

variable "private1" {
  description = "subnet3 cidr block"
  default     = "10.0.3.0/24"
}

variable "private2" {
  description = "subnet3 cidr block"
  default     = "10.0.4.0/24"
}

