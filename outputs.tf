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