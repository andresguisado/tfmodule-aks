variable "location" {
  description = "The location/region where the core network will be created. The full list of Azure regions can be found at https://azure.microsoft.com/regions"
  default     = "useast"
}

variable "testing" {
  description = "Boolean true/false on whether to run in test mode (in test mode we create resource group/vnet/subnet)"
  default     = true
}

variable "resource_group_name" {
  description = "Name for resource group"
  default     = "test"
}

variable "subnet_target_resource_group_name" {
  description = "Name for resource group for target subnets (if creating resources in a specified subnet)"
  default     = ""
}

variable "aks_cluster_name" {
  description = "Default name for AKS managed cluster"
  default     = "test"
}

variable "agent_vnet_subnet_id" {
  description = "Subnet ID for K8s nodes"
  default     = ""
}

variable "dns_prefix" {
  description = "DNS prefix"
  default     = ""
}

variable "kubernetes_version" {
  description = "Version of K8s to deploy"
  default     = "1.8.2"
}

variable "linux_profile_admin_username" {
  description = "Admin user for unix hosts created in the cluster"
  default     = "azureuser"
}

variable "linux_profile_ssh_key" {
  description = "SSH public key added to unix hosts created in the cluster"
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDlbaE3wkAh always override"
}

variable "agent_pool_profile_name" {
  description = "Name of agent pool profile"
  default     = "test"
}

variable "agent_pool_count" {
  description = "Number of nodes created in agent pool"
  default     = "1"
}

variable "agent_pool_vm_size" {
  description = "Instance type for nodes created in the agent pool"
  default     = "Standard_DS2_v2"
}

variable "agent_pool_storage_profile" {
  description = "Type of storage to use with the AKS cluster - ManagedDisks and StorageAccount are the options"
  default     = "ManagedDisks"
}

variable "agent_pool_os_type" {
  description = "OS to use in agent pool nodes"
  default     = "Linux"
}

variable "service_principal_client_id" {
  description = "Service principle client ID"
  default     = ""
}

variable "service_principal_client_secret" {
  description = "Service principle client secret"
  default     = ""
}

variable "tags" {
  description = "The tags to associate with the resources created in this module"
  type        = "map"

  default = {
    tag1 = ""
    tag2 = ""
  }
}
