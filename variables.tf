variable "environment" {
  type = "string"
}

variable "basename" {
  type = "string"
}

variable "location" {
  type = "string"
}

variable "admin_username" {
  type    = "string"
  default = "azureadmin"
}

variable "cluster_os_disk_size" {
  type    = "string"
  default = "100"
}

variable "cluster_node_count" {
  type    = "string"
  default = "2"
}

variable "cluster_node_size" {
  type    = "string"
  default = "Standard_E2s_v3"
}

variable "kubernetes_version" {
  type    = "string"
  default = "1.11.5"
}

variable "subscription" {
  type    = "string"
  default = ""
}

variable "cluster_subnet_range" {
  type = "string"
}

variable "service_address_range" {
  type = "string"
}

variable "vnet_address_space" {
  type = "string"
}

variable "central_keyvault_uri" {
  type = "string"
  default = "https://warroomvault.vault.azure.net/"
}
