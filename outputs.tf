output "id" {
  description = "The name of the newly created resource group"
  value       = "${azurerm_kubernetes_cluster.aks.id}"
}
