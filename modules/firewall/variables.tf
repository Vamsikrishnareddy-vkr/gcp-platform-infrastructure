variable "project_id" {
  description = "Google Cloud Project ID"
  type        = string
}

variable "network" {
  description = "VPC Network Name"
  type        = string
}

variable "firewall_name" {
  description = "Firewall Rule Name"
  type        = string
}

variable "source_ranges" {
  description = "Allowed Source IP Ranges"
  type        = list(string)
}

variable "target_tags" {
  description = "Network Tags"
  type        = list(string)
}