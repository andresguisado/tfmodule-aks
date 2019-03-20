# the output  below is for modules that are dependent on the init_helm null resource in this module
#output "wait_init_helm" {
#  value = "${data.null_data_source.init_helm.outputs["wait_init_helm"]}"
#}
output "cluster_name" {
  value = "${azurerm_kubernetes_cluster.aks_cluster.name}"
}
output "resource_group_name" {
  value = "${azurerm_resource_group.env_resource_group.name}"
}