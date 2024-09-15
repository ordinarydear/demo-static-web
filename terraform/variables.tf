variable "resource_group_name" {
  description = "Name of the existing resource group"
  type        = string
  default = "static-web-project"
}

variable "location" {
  description = "Azure region where the cluster will be deployed"
  type        = string
  default     = "southeastasia"
}

variable "cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
  default     = "static-web-cluster"
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster"
  type        = string
  default     = "staticweb"
}

variable "node_count" {
  description = "Number of nodes in the default node pool"
  type        = number
  default     = 1
}

variable "vm_size" {
  description = "Size of the VMs in the default node pool"
  type        = string
  default     = "standard_a4_v2"
}

variable "tags" {
  description = "Tags to apply to the AKS cluster"
  type        = map(string)
  default     = {
    Environment = "Development"
  }
}