#add the webapp name in the <webappname> field

output "webapp_name" {
  value       = azurerm_app_service.exampleapp.name   
  description = "The name of the deployed Web App"
}

output "webapp_default_hostname" {
  value       = azurerm_app_service.exampleapp.default_site_hostname
  description = "The default hostname (URL) of the Web App"
}

output "webapp_resource_group" {
  value       = azurerm_app_service.exampleapp.resource_group_name
  description = "The Resource Group where the Web App is deployed"
}
