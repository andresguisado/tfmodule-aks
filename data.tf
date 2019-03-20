data "azurerm_kubernetes_cluster" "cluster" {
  name                = "${azurerm_kubernetes_cluster.aks_cluster.name}"
  resource_group_name = "${azurerm_resource_group.env_resource_group.name}"
}
data "azurerm_key_vault_secret" "sp-id" {
  name      = "sp-id"
  vault_uri = "${var.central_keyvault_uri}"
}

 data "azurerm_key_vault_secret" "sp-key" {
  name      = "sp-key"
  vault_uri = "${var.central_keyvault_uri}"
}