resource "google_dns_managed_zone" "truefoundry_zone" {
  count       = var.use_existing_dns_zone ? 0 : 1
  name        = var.dns_zone_name
  dns_name    = var.dns_zone_name
  description = "Managed DNS zone"
}

resource "google_project_iam_custom_role" "dns_manager" {
  project     = var.project_id
  role_id     = var.dns_role_id
  title       = var.dns_role_title
  description = "Custom role for DNS management with cert-manager"
  permissions = [
    "dns.resourceRecordSets.create",
    "dns.resourceRecordSets.delete",
    "dns.resourceRecordSets.get",
    "dns.resourceRecordSets.list",
    "dns.resourceRecordSets.update",
    "dns.changes.create",
    "dns.changes.get",
    "dns.changes.list",
    "dns.managedZones.list"
  ]
}

resource "google_service_account" "dns_sa" {
  project      = var.project_id
  account_id   = var.dns_service_account_name
  display_name = var.dns_service_account_name
}

resource "google_service_account_iam_member" "workload_identity" {
  service_account_id = google_service_account.dns_sa.name
  role               = "roles/iam.workloadIdentityUser"
  member             = "serviceAccount:${var.project_id}.svc.id.goog[${var.cert_manager_namespace}/${var.cert_manager_service_account}]"
}

resource "google_project_iam_member" "dns_sa_role_binding" {
  project = var.project_id
  role    = google_project_iam_custom_role.dns_manager.name
  member  = "serviceAccount:${google_service_account.dns_sa.email}"
}