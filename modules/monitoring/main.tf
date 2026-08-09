resource "google_monitoring_notification_channel" "email" {
  project      = var.project_id
  display_name = "DevOps Alert Email"
  type         = "email"

  labels = {
    email_address = var.notification_email
  }
}

resource "google_monitoring_alert_policy" "gke_cpu" {
  project      = var.project_id
  display_name = "GKE Node CPU High"

  combiner = "OR"

  conditions {
    display_name = "GKE Node CPU Usage"

    condition_threshold {
      filter = "resource.type=\"k8s_node\" AND metric.type=\"kubernetes.io/node/cpu/allocatable_utilization\""

      comparison      = "COMPARISON_GT"
      threshold_value = 0.8
      duration        = "300s"

      aggregations {
        alignment_period   = "60s"
        per_series_aligner = "ALIGN_MEAN"
      }
    }
  }

  notification_channels = [
    google_monitoring_notification_channel.email.name
  ]

  alert_strategy {
    auto_close = "1800s"
  }
}