terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "<= 4.38.1"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = var.subscriptionID
  client_secret   = var.client_secretID
  client_id       = var.clientID
  tenant_id       = var.tenantID
}

resource "azurerm_resource_group" "examplerg" {
  location = var.location
  name     = var.resourceGroup
}

resource "azurerm_service_plan" "exampleappserviceplan" {
  location            = azurerm_resource_group.examplerg.location
  name                = var.appServicePlan
  os_type             = "Linux"
  resource_group_name = azurerm_resource_group.examplerg.name
  sku_name            = "F1"
}


resource "azurerm_linux_web_app" "exampleapp" {
  location            = azurerm_resource_group.examplerg.location
  name                = var.appName
  resource_group_name = azurerm_resource_group.examplerg.name
  service_plan_id     = azurerm_service_plan.exampleappserviceplan.id
  site_config {
    always_on = false
  }

}