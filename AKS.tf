resource "azurerm_kubernetes_cluster" "aks1" {
  name                = var.kubernetes_cluster_name
  location            = azurerm_resource_group.nimbus_rg.location
  resource_group_name = azurerm_resource_group.nimbus_rg.name
  dns_prefix          = "nimbusaks1"

  default_node_pool {
    name       = "default"
    node_count = var.aks_node_count
    vm_size    = var.aks_vm_size
  }

  node_provisioning_profile {
    mode = "Manual"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}

