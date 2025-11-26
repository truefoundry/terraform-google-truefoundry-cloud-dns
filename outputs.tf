output "dns_zone_nameservers" {
  description = "Name servers for the DNS zone (only available if DNS zone is created)"
  value       = var.use_existing_dns_zone ? null : google_dns_managed_zone.truefoundry_zone[0].name_servers
}

output "service_account_email" {
  value = google_service_account.dns_sa.email
}