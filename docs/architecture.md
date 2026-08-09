# Architecture

This project is a GCP infrastructure setup built using Terraform.

I separated the infrastructure into reusable Terraform modules and kept the environment-specific values in separate Dev, QA and Prod configuration files.

The project has two main parts:

- GCP infrastructure
- Application CI/CD

## Infrastructure

Terraform is used to create the main GCP resources.

The infrastructure includes:

- VPC and subnet
- Firewall rules
- Service account
- IAM
- Cloud Router
- Cloud NAT
- Artifact Registry
- GKE
- Basic monitoring

The basic infrastructure flow is:

Terraform → GCP infrastructure → GKE

The GKE cluster uses the VPC and subnet created by the network module.

Cloud NAT is used for outbound connectivity from resources that don't have public IP addresses.

Artifact Registry is used as the Docker image repository.

## Application

I created a simple Node.js application and added a Dockerfile for building the application image.

The application flow is:

GitHub → GitHub Actions → Docker → Artifact Registry → GKE → Kubernetes application

The Kubernetes configuration is kept separately under the `k8s` directory.

## CI/CD

I used GitHub Actions for the CI/CD part of the project.

There are three workflows:

```text
.github/workflows/
├── terraform.yml
├── docker-ci.yml
└── deploy.yml