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

1. az login
2. az ad sp create-for-rbac -n az-demo --role="Contributor" --scopes="/subscriptions/$SUBSCRIPTION_ID"
3. export ARM_CLIENT_ID=""
export ARM_CLIENT_SECRET=""
export ARM_SUBSCRIPTION_ID=""
export ARM_TENANT_ID=""

# Steps:
```bash
az login
az ad sp create-for-rbac \
  --name az-demo \
  --role Contributor \
  --scopes /subscriptions/<SUBSCRIPTION_ID>
