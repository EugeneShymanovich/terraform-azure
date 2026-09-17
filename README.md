# Terraform Azure Demo

A small Terraform configuration for spinning up a basic Azure environment: a resource group, a virtual network with one subnet, a public IP, a network security group, and a single Ubuntu 22.04 virtual machine reachable over SSH.

It's a personal sandbox for practicing Terraform + Azure — trying out providers, remote state, and CI/CD with GitHub Actions rather than a production setup.

## What it creates

- Resource group, VNet + subnet, static public IP
- Network security group (SSH access) attached to the VM's NIC
- One `Standard_B4ms` Ubuntu VM, authenticated via SSH public key

## State & auth

- Remote state is stored in an Azure Storage Account backend (`backend.tf`)
- Authentication uses OIDC (`use_oidc = true`) — no long-lived credentials stored in the repo
- GitHub Actions workflows (`.github/workflows`) run `terraform plan`/`apply`/`destroy` using secrets configured in the repository settings

## Usage

```bash
terraform init
terraform plan -var="vm_ssh_public_key=<your-ssh-public-key>"
terraform apply
```
