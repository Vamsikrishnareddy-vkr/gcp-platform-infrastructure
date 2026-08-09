# Networking

The project uses a custom VPC network for the GCP platform.

## VPC

The network module creates the VPC used by the platform.

The VPC is used by the GKE cluster and other resources that need to communicate within the platform.

## Subnet

A subnet is created inside the VPC.

The GKE cluster uses this subnet.

The current subnet CIDR is:

```text
10.10.0.0/24