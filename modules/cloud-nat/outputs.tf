output "nat_name" {
  description = "Cloud NAT Name"
  value       = google_compute_router_nat.nat.name
}