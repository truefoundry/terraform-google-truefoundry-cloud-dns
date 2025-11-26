variable "use_existing_dns_zone" {
  description = "Flag to create DNS zone"
  type        = bool
  default     = false
}

variable "dns_zone_name" {
  description = "DNS zone name"
  type        = string
  default     = ""
}

variable "project_id" {
  description = "Project ID"
  type        = string
}

variable "dns_service_account_name" {
  description = "DNS Service Account Name"
  type        = string
  default     = "cert-manager-dns"
}

variable "dns_role_id" {
  description = "Custom DNS role ID"
  type        = string
  default     = "customDnsRole"
}

variable "dns_role_title" {
  description = "Custom DNS role title"
  type        = string
  default     = "DNS Manager"
}

variable "cert_manager_namespace" {
  description = "Kubernetes namespace where cert-manager is installed"
  type        = string
  default     = "cert-manager"
}

variable "cert_manager_service_account" {
  description = "Kubernetes service account name for cert-manager"
  type        = string
  default     = "cert-manager"
}