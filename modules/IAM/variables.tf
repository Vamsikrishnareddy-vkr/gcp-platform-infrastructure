variable "project_id" {
  description = "Google Cloud Project ID"
  type        = string
}

variable "service_account_email" {
  description = "Service Account Email"
  type        = string
}

variable "roles" {
  description = "IAM Roles"
  type        = list(string)
}