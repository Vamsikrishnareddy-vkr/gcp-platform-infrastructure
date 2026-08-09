output "notification_channel_id" {
  description = "Monitoring email notification channel ID"
  value       = google_monitoring_notification_channel.email.id
}

output "alert_policy_id" {
  description = "GKE CPU alert policy ID"
  value       = google_monitoring_alert_policy.gke_cpu.id
}