output "vpc_name" {
  description = "VPC Network Name"
  value       = google_compute_network.vpc.name
}

output "vpc_id" {
  description = "VPC Network ID"
  value       = google_compute_network.vpc.id
}

output "subnet_name" {
  description = "Subnet Name"
  value       = google_compute_subnetwork.subnet.name
}

output "subnet_id" {
  description = "Subnet ID"
  value       = google_compute_subnetwork.subnet.id
}