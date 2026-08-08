output "vpc_name" {
  description = "VPC Network Name"
  value       = module.network.vpc_name
}

output "vpc_id" {
  description = "VPC Network ID"
  value       = module.network.vpc_id
}

output "subnet_name" {
  description = "Subnet Name"
  value       = module.network.subnet_name
}

output "subnet_id" {
  description = "Subnet ID"
  value       = module.network.subnet_id
}

output "service_account_email" {
  description = "Service Account Email"
  value       = module.service_account.service_account_email
}

output "service_account_name" {
  description = "Service Account Name"
  value       = module.service_account.service_account_name
}

output "artifact_repository_name" {
  description = "Artifact Registry Repository Name"
  value       = module.artifact_registry.repository_name
}

output "cloud_router_name" {
  description = "Cloud Router Name"
  value       = module.cloud_router.router_name
}

output "cloud_nat_name" {
  description = "Cloud NAT Name"
  value       = module.cloud_nat.nat_name
}

output "gke_cluster_name" {
  value = module.gke.cluster_name
}

output "gke_cluster_endpoint" {
  value = module.gke.cluster_endpoint
}

output "firewall_name" {
  description = "Firewall Rule Name"
  value       = module.firewall.firewall_name
}

output "firewall_id" {
  description = "Firewall Rule ID"
  value       = module.firewall.firewall_id
}