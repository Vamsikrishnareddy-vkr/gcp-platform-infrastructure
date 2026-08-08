module "network" {
  source = "./modules/network"

  project_id = var.project_id
  region     = var.region

  vpc_name    = "dev-vpc"
  subnet_name = "dev-subnet"
  subnet_cidr = "10.10.0.0/24"
}

module "service_account" {
  source = "./modules/service-account"

  project_id         = var.project_id
  service_account_id = "terraform-sa"
  display_name       = "Terraform Service Account"
}