resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                = "aks-${lower(var.basename)}-${lower(var.environment)}"
  location            = "${azurerm_resource_group.env_resource_group.location}"
  resource_group_name = "${azurerm_resource_group.env_resource_group.name}"
  dns_prefix          = "acctestagent1"
  kubernetes_version  = "${var.kubernetes_version}"

  agent_pool_profile {
    name            = "default"
    count           = "${var.cluster_node_count}"
    vm_size         = "${var.cluster_node_size}"
    os_type         = "Linux"
    os_disk_size_gb = "${var.cluster_os_disk_size}"
    vnet_subnet_id  = "${azurerm_subnet.cluster_subnet.id}"
  }

  service_principal {
    client_id     = "${data.azurerm_key_vault_secret.sp-id.value}"
    client_secret = "${data.azurerm_key_vault_secret.sp-key.value}"
  }

  role_based_access_control {
    enabled = true
  }
}
