# Terraform Settings Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.0"
    }
  }

  # Terraform State Storage to Azure Storage Container
backend "azurerm" {
  resource_group_name  = "dev_rg"
  storage_account_name = "mystorage8897"
  container_name       = "terraform"
  key                  = "terraform.tfstate"
}

}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

# Random String Resource
resource "random_string" "myrandom" {
  length  = 6
  upper   = false
  special = false
}





locals {
  owner       = "epam"
  environment = "dev"
  email       = "rupeshdhondi@abc.com"


  common_tags = {
    Owner       = local.owner
    Email       = local.email
    Environment = local.environment
  }
} 
