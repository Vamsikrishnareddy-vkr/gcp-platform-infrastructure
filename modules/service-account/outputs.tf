output "service_account_email" {
  description = "Service Account Email"
  value       = google_service_account.terraform_sa.email
}

output "service_account_name" {
  description = "Service Account Name"
  value       = google_service_account.terraform_sa.name
}