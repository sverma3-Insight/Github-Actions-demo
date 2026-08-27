terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.0.0"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

locals {
  comman_tags = {
    environment = "producion"
    region = var.location
  }
}

resource "azurerm_resource_group" "myrg" {
  name     = "RG-Day3"
  location = var.location
  tags = local.comman_tags
}


resource "azurerm_virtual_network" "VNET" {
  name                = "Dev-vnet"
  location            = var.location
  resource_group_name = azurerm_resource_group.myrg.name
  address_space       = ["10.0.0.0/16"]

  tags = local.comman_tags
}