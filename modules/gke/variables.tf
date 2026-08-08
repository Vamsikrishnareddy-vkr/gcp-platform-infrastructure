variable "project_id" {
  description = "Google Cloud Project ID"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
}

variable "cluster_name" {
  description = "GKE Cluster Name"
  type        = string
}

variable "network" {
  description = "VPC Network"
  type        = string
}

variable "subnetwork" {
  description = "Subnet"
  type        = string
}

variable "service_account" {
  description = "Node Service Account"
  type        = string
}