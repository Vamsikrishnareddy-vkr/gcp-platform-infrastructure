output "firewall_name" {
  description = "Firewall Rule Name"
  value       = google_compute_firewall.allow_internal.name
}

output "firewall_id" {
  description = "Firewall Rule ID"
  value       = google_compute_firewall.allow_internal.id
}