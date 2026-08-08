variable "project_id" {
  description = "Google Cloud Project ID"
  type        = string
}

variable "project_name" {
  description = "Project Name"
  type        = string
}

variable "environment" {
  description = "Environment Name"
  type        = string
}

variable "zone" {
  description = "Google Cloud Zone"
  type        = string
}

variable "region" {
  description = "Google Cloud Region"
  type        = string
}

variable "vpc_name" {
  description = "VPC Name"
  type        = string
}

variable "subnet_name" {
  description = "Subnet Name"
  type        = string
}

variable "subnet_cidr" {
  description = "Subnet CIDR"
  type        = string
}

variable "cluster_name" {
  description = "GKE Cluster Name"
  type        = string
}