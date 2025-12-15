data "google_dns_managed_zone" "existing_zone" {
  count = var.use_existing_dns_zone ? 1 : 0
  name  = var.zone_name
}