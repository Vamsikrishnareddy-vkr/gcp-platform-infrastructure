# Deployment Flow

The deployment process has two parts: infrastructure and application deployment.

## Infrastructure

Terraform is used to create the GCP infrastructure.

The flow is:

Terraform code → Terraform modules → GCP resources

The modules are used for:

- Network
- Service account
- IAM
- Firewall
- Cloud Router
- Cloud NAT
- Artifact Registry
- GKE
- Monitoring

Before making changes, I check the Terraform configuration using:

```bash
terraform fmt -check -recursive
terraform init
terraform validate