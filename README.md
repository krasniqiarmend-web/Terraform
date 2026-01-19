# Terraform
Terraform IAC with azure

# - az login
# Create Service Principal
# az ad sp create-for-rbac -n az-demo --role="Contributor" --scopes="/subscriptions/$SUBSCRIPTION_ID"
# export ARM_CLIENT_ID=""
# export ARM_CLIENT_SECRET=""
# export ARM_SUBSCRIPTION_ID=""
# export ARM_TENANT_ID=""


terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~> 4.57.0"
    }
  }
  required_version = ">=1.14.3"
}

provider "azurerm" {
    features {
      
    }
    
resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_storage_account" "example" {
 
  name                     = "Contorso1"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location # implicit dependency
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}    
