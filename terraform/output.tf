output "cluster_name" {
  value       = azurerm_kubernetes_cluster.aks_cluster.name
  description = "The name of the AKS cluster"
}

output "cluster_id" {
  value       = azurerm_kubernetes_cluster.aks_cluster.id
  description = "The ID of the AKS cluster"
}

output "kube_config" {
  value       = azurerm_kubernetes_cluster.aks_cluster.kube_config_raw
  sensitive   = true
  description = "Raw kubeconfig for the AKS cluster"
}

output "cluster_fqdn" {
  value       = azurerm_kubernetes_cluster.aks_cluster.fqdn
  description = "The FQDN of the AKS cluster"
}