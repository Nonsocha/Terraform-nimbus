output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.aks1.name
}

output "container_registry_name" {
  value = azurerm_container_registry.acr.name

}

output "key_vault_name" {
  value = azurerm_key_vault.key_vault.name
}