
#add your azure credentials and details in the default fields based on description

variable "tenantID" {
  description = "azure tenant id"
  type        = string
  default     = ""   
}

variable "subscriptionID" {
  description = "azure subscription id"
  type        = string
  default     = ""
}

variable "client_secretID" {
  description = "terraform service principal client secretID"
  type        = string
  #add default secret here
}

variable "clientID" {
  description = "terraform app id or client id"
  type        = string
  default     = ""
}

variable "resourceGroup" {
  description = "azure resource group"
  type        = string
  default     = ""
}

variable "location" {
  description = "azure region"
  type        = string
  default     = ""
}

variable "appServicePlan" {
  description = "app service plan name"
  type        = string
  default     = ""
}

variable "appName" {
  description = "app name"
  type        = string
  default     = ""
}