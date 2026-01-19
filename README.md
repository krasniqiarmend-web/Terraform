Terraform/
├── README.md
├── main.tf
├── provider.tf
├── variables.tf
├── outputs.tf
├── .gitignore


# Terraform Azure Infrastructure

This repository demonstrates Infrastructure as Code (IaC) using **Terraform** to provision basic resources in **Microsoft Azure**.

The project is intended as a learning and portfolio example, showcasing:
- Azure authentication using a Service Principal
- Provider and version constraints
- Resource dependencies in Terraform

#  Resources Created
- Azure Resource Group
- Azure Storage Account

# Authentication

This project uses an Azure **Service Principal** for authentication.

# Steps:
```bash
az login
az ad sp create-for-rbac \
  --name az-demo \
  --role Contributor \
  --scopes /subscriptions/<SUBSCRIPTION_ID>
