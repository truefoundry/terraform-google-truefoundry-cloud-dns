output "dns_zone_nameservers" {
  description = "Name servers for the DNS zone (only available if DNS zone is created)"
  value       = var.use_existing_dns_zone ? null : google_dns_managed_zone.truefoundry_dns_zone[0].name_servers
}

output "service_account_email" {
  description = "GCP service account email for cert-manager"
  value       = google_service_account.truefoundry_dns_service_account.email
}

output "project_id" {
  description = "GCP project ID for cert-manager DNS configuration"
  value       = var.project_id
}

output "workload_identity_annotation" {
  description = "Annotation to add to cert-manager Kubernetes service account"
  value       = "iam.gke.io/gcp-service-account=${google_service_account.truefoundry_dns_service_account.email}"
}