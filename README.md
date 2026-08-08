# GCP Platform Infrastructure

This repository contains the Terraform code I use to provision infrastructure on Google Cloud Platform.

The goal of this project is to build a reusable and modular infrastructure that can be used across multiple environments like Development, QA, and Production.

## What I've implemented

- Modular Terraform code
- Custom VPC Network
- Subnet creation
- Reusable Network module
- Provider and Terraform version configuration
- Variables and Outputs
- Git version control

## Project Structure

```text
gcp-platform-infrastructure/
│
├── modules/
│   └── network/
│
├── main.tf
├── provider.tf
├── variables.tf
├── outputs.tf
├── versions.tf
├── README.md
```

## Getting Started

Initialize Terraform

```bash
terraform init
```

Check formatting

```bash
terraform fmt -recursive
```

Validate configuration

```bash
terraform validate
```

Generate execution plan

```bash
terraform plan
```

Create infrastructure

```bash
terraform apply
```

This repository is part of my hands-on GCP DevOps practice. Each module is developed and tested individually before integrating it into the complete platform.