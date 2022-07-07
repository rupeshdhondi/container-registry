variable "resource_group" {
  description = "Name of the resource group to be imported."
  type        = string
  default     = "dev"
}

variable "location" {
  description = "Description for resource group"
  type        = string
  default     = "eastus"
}

variable "acr_name" {
  description = "Description for acr name"
  type        = string
  default     = "acr"
}

variable "tags" {
  description = "Description for tags"
  type = map(string)
  default = {
    "environment" = "dev"
  }
  
}
