output "resource_group_name" {
  description = "output for resource group name"
  value       = azurerm_resource_group.myrg.name
}

output "VNET_id" {
  description = "output for Virtual Network ID"
  value       = azurerm_virtual_network.VNET.id
}