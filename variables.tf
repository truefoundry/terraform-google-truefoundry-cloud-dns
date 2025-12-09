variable "use_existing_dns_zone" {
  description = "Flag to create DNS zone"
  type        = bool
  default     = false
}

variable "dns_name" {
  description = "DNS name. e.g - test.example.com."
  type        = string
}

variable "cluster_name" {
  description = ""
  type        = string
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
  default     = "tfyDNSManagerRole"
}

variable "dns_role_title" {
  description = "Custom DNS role title"
  type        = string
  default     = "dns-manager"
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

variable "truefoundry_dns_manger_role_name_override_enabled" {
  description = "Enable override for TrueFoundry DNS Manager Role name"
  type        = bool
  default     = false
}

variable "truefoundry_dns_manger_role_override_name" {
  description = "Override name for TrueFoundry DNS Manager Role"
  type        = string
  default     = ""
}

variable "truefoundry_dns_service_account_name_override_enabled" {
  description = "Enable override for TrueFoundry DNS Service Account name"
  type        = bool
  default     = false
}

variable "truefoundry_dns_service_account_override_name" {
  description = "Override name for TrueFoundry DNS Service Account."
  type        = string
  default     = ""
}

variable "truefoundry_dns_manger_role_id_override_enabled" {
  description = "Enable override for TrueFoundry DNS Manager Role ID"
  type        = bool
  default     = false
}

variable "truefoundry_dns_manger_role_id_override_name" {
  description = "Override name for TrueFoundry DNS Manager Role ID"
  type        = string
  default     = ""
}

variable "truefoundry_dns_zone_name_override_enabled" {
  description = "Enable override for TrueFoundry DNS Zone name"
  type        = bool
  default     = false
}

variable "truefoundry_dns_zone_override_name" {
  description = "Override name for TrueFoundry DNS Zone"
  type        = string
  default     = ""
}