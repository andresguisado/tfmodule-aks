# AKS Managed Container Cluster

**Description:** Terraform module to an Azure Kubernetes Service (AKS) 

**Output:** An AKS cluster in an Azure managed vNet, with the parent Container Service object in an Azure custom resource group. 

## Module Structure

```bash
|-- .gitignore
|-- README.md
|-- cluster.tf
|-- groups.tf
|-- network.tf
|-- outputs.tf
|-- provider.tf
|-- variables.tf
```
### File Descriptions

**Filename**|**Description**
-----|-----
[cluster.tf](cluster.tf) | Terraform AKS resource configuration to create the K8s cluster.
[groups.tf](groups.tf) | Terraform Azure resource group resource configuration to create by Terraform to store the AKS cluster. <br/>*basename-environment* <br/> e.g. **aks-ag01-dev**.
[network.tf](network.tf) | Creating core network for the AKS cluster.
[outputs.tf](outputs.tf) | Terraform module outputs which might be used by others.
[principles.tf](principles.tf) | Terraform resources to create a SPN for AKS cluster. A password from terraform random_string resource is created for the SPN password.
[provider.tf](provider.tf) |Provider and the version we are using of it.
[varibles.tf](varibles.tf) | Terraform variables.

## Module Usage

```
module "mgmt_environment" {
  source                = "git::ssh://git@github.com:andresguisado/tf-aks.git"
  cluster_node_count    = "${var.cluster_node_count}"
  location              = "${var.location}"
  basename              = "${var.basename}"
  environment           = "${var.environment}"
  vnet_address_space    = "${var.vnet_address_space}"
  cluster_subnet_range  = "${var.cluster_subnet_range}"
  service_address_range = "${var.service_address_range}"
  subscription          = "${var.subscription}"
  kubernetes_version    = "${var.kubernetes_version}"
}
````

## Local execution

You just need to create a Terraform project, put the above JSON snippet in a **main.tf** and then ```terraform init / terraform apply / terraform destroy``` to **create/delete** the cluster. Remember to create **variables.tf** and **provider.tf** files needed,  find [here](https://www.terraform.io/docs/modules/usage.html) the documentation to create a Terraform project. 


Authors
=======
Created by [Andres Guisado](http://github.io/andresguisado)
