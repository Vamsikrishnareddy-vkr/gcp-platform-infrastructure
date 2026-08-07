module "network" {
  source = "./modules/network"

  project_id = var.project_id
  region     = var.region

  vpc_name    = "dev-vpc"
  subnet_name = "dev-subnet"
  subnet_cidr = "10.10.0.0/24"
}