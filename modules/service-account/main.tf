resource "google_service_account" "terraform_sa" {
  project      = var.project_id
  account_id   = var.service_account_id
  display_name = var.display_name
}