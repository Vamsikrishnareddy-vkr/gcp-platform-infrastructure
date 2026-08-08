module "network" {
  source = "./modules/network"

  project_id = var.project_id
  region     = var.region

  vpc_name    = var.vpc_name
  subnet_name = var.subnet_name
  subnet_cidr = var.subnet_cidr
}

module "service_account" {
  source = "./modules/service-account"

  project_id         = var.project_id
  service_account_id = "terraform-sa"
  display_name       = "Terraform Service Account"
}

module "artifact_registry" {
  source = "./modules/artifact-registry"

  project_id    = var.project_id
  region        = var.region
  repository_id = "docker-images"
  description   = "Docker images for GKE applications"
}

module "cloud_router" {
  source = "./modules/cloud-router"

  project_id  = var.project_id
  region      = var.region
  router_name = "gke-router"

  network = module.network.vpc_name
}

module "cloud_nat" {
  source = "./modules/cloud-nat"

  project_id = var.project_id
  region     = var.region

  router_name = module.cloud_router.router_name
  nat_name    = "gke-cloud-nat"
}

module "gke" {
  source = "./modules/gke"

  project_id = var.project_id
  region     = var.region

  cluster_name = var.cluster_name

  network         = module.network.vpc_name
  subnetwork      = module.network.subnet_name
  service_account = module.service_account.service_account_email
}

module "firewall" {
  source = "./modules/firewall"

  project_id = var.project_id
  network    = module.network.vpc_name

  firewall_name = "allow-internal"

  source_ranges = [
    var.subnet_cidr
  ]

  target_tags = [
    "gke-node"
  ]
}

module "iam" {
  source = "./modules/iam"

  project_id = var.project_id

  service_account_email = module.service_account.service_account_email

  roles = [
    "roles/container.admin",
    "roles/artifactregistry.reader",
    "roles/logging.logWriter",
    "roles/monitoring.metricWriter"
  ]
}