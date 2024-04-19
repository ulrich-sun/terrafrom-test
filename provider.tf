terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
      
    }
  }
  cloud {
    organization = "ulrich-org"

    workspaces {
      name = "lewis-workspace"
    }
  }
}
provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}
