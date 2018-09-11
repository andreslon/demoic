provider "azurerm" {
  subscription_id = "${var.subscription_id}"
  client_id       = "${var.client_id}"
  client_secret   = "${var.client_secret}"
  tenant_id       = "${var.tenant_id}"
}

variable "subscription_id" {
  description = "Enter Subscription ID for provisioning resources in Azure"
}

variable "client_id" {
  description = "Enter Client ID for Application in Azure AD"
}

variable "client_secret" {
  description = "Enter Client secret for Application in Azure AD"
}

variable "tenant_id" {
  description = "Enter Tenand ID / Directory ID  of your Azure AD. Login Azure id script install cli"
}

variable "location" {
  description = "The default Azure region for the resource provisioning"
}

variable "resource_group_name" {
  description = "Resource group name que contendra un grupo de recursos"
}

variable "vnet_cidr" {
  description = "CIDR block for Virtual Network"
}

variable "subnet1_cidr" {
  description = "CIDR block por subnet within a virtual network"
}

variable "subnet2_cidr" {
  description = "CIDR block por subnet within a virtual network"
}



variable "vm_username" {
  description = "Enter admin username to ssh into Linux VM"
}

variable "admin_ssh_publickey" {
  type        = "string"
  description = "Configure all the linux virtual machines in the cluster with the SSH RSA public key string. The key should include three parts, for example 'ssh-rsa AAAAB...snip...UcyupgH azureuser@linuxvm'"
}
