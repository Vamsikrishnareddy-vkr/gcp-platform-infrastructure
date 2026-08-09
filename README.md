# GCP Platform Infrastructure

This repository contains the Terraform code I used to build a basic GCP platform infrastructure setup.

The main goal of this project is to keep the infrastructure reusable and organized by using Terraform modules and separate environment configurations.

## What is included

- GCP VPC and subnet
- Firewall rules
- Service account
- IAM roles
- Artifact Registry
- Cloud Router
- Cloud NAT
- GKE cluster
- Basic monitoring and alerting
- Dev, QA and Prod environment configuration
- GitHub Actions for Terraform validation
- Docker CI workflow
- Kubernetes deployment manifests
- GKE deployment workflow

## Architecture

The basic flow is:

Developer
    |
    v
GitHub
    |
    +---- Terraform
    |       |
    |       +---- VPC
    |       +---- IAM
    |       +---- GKE
    |       +---- Cloud NAT
    |       +---- Artifact Registry
    |
    +---- GitHub Actions
            |
            +---- Terraform validation
            |
            +---- Docker build
            |
            +---- GKE deployment

## Repository Structure

```text
gcp-platform-infrastructure/
|
├── .github/
│   └── workflows/
│       ├── terraform.yml
│       ├── docker-ci.yml
│       └── deploy.yml
|
├── app/
│   ├── Dockerfile
│   ├── package.json
│   └── server.js
|
├── backend/
│   ├── backend-dev.tfbackend
│   ├── backend-qa.tfbackend
│   └── backend-prod.tfbackend
|
├── environments/
│   ├── dev/
│   │   └── terraform.tfvars
│   ├── qa/
│   │   └── terraform.tfvars
│   └── prod/
│       └── terraform.tfvars
|
├── k8s/
│   ├── deployment.yaml
│   └── service.yaml
|
├── modules/
│   ├── artifact-registry/
│   ├── cloud-nat/
│   ├── cloud-router/
│   ├── firewall/
│   ├── gke/
│   ├── iam/
│   ├── monitoring/
│   ├── network/
│   └── service-account/
|
├── main.tf
├── variables.tf
├── outputs.tf
├── provider.tf
├── versions.tf
├── .gitignore
└── README.md