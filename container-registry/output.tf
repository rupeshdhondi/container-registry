output "resource_group" {
    value = azurerm_container_registry.acr.resource_group_name
}

output "location" {
    value = azurerm_container_registry.acr.location
}

output "acr_name" {
    value = azurerm_container_registry.acr.name
}

