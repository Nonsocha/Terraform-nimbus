
variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "nimbus-project"
}
variable "resource_group_name" {
  description = "Name of Azure resource group"
  type        = string
  default     = "Nimbus"
}

variable "location" {
  description = "Azure region where resources will be deployed"
  default     = "east us"
}

variable "storage_account_name" {
  description = "Name of the Azure storage Account"
  type        = string
  default     = "nimbusstorage123"

}

variable "container_name" {
  description = "Name of Blob container"
  type        = string
  default     = "tfstate"

}

variable "container_registry" {
  description = "Name of the container resgistry"
  type        = string
  default     = "nimbusregistry123"
}

variable "acr_aks" {
  description = "MU for Azure Container registry"
  default     = "Basic"
}

variable "kubernetes_cluster_name" {
  description = "Name of the kubernetes cluster"
  type        = string
  default     = "nimbus-aks"
}

variable "aks_node_count" {
  description = "Number of node in the default node"
  type        = number
  default     = 1
}
#Key_vault
variable "kv_sku" {
  description = "SKU for Azure key_vault"
  type        = string
  default     = "standard"
}
variable "key_vault_name" {
  description = "Name of Key to storage"
  type        = string
  default     = "StandardB2"
}

#storage

variable "storage_replication_type" {
  description = "Replication type for storage"
  type        = string
  default     = "LRS"
}

variable "aks_vm_size" {
  description = "VM size for the default node pool"
  type        = string
  default     = "Standard_D2_v2"
}