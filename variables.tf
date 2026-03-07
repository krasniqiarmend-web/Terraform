variable "project_name" {
  description = "Name prefix used for all resources"
  default     = "terraform-web-lab"
}

variable "resource_group_name" {
  description = "Azure resource group name"
  default     = "rg-tf-lab"
}

variable "location" {
  description = "Azure region"
  default     = "eastus"
}