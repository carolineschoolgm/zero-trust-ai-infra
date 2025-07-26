# Zero Trust AI Infrastructure

A fully modular, multi-cloud Zero Trust infrastructure built with Terraform. Designed to enforce identity boundaries, network segmentation, encryption, and CI/CD automation for AI workloads on **AWS** and **Azure**.

## Features

- Fine-grained IAM Permission Boundaries (AWS)
- Private Networking with Secure Endpoints (AWS)
- Key Encryption using AWS KMS and Azure Key Vault
- GitHub Actions CI/CD for Terraform plan validation and apply
- Infrastructure-as-Code (IaC) with least privilege
- Multi-cloud Zero Trust architecture: **AWS + Azure**

---

## Technologies

- **Terraform (IaC)**
- **AWS** (IAM, VPC, Endpoints, KMS)
- **Azure** (Key Vault, Resource Group)
- **GitHub Actions** (CI/CD automation)



## Getting Started

### Prerequisites

- AWS account + IAM access key
- Azure account (`az login`)
- Terraform ≥ 1.5
- GitHub repo with Actions enabled

### AWS Setup

1. Create an IAM user with `AdministratorAccess` (for test/demo) or scoped permission boundaries.
2. Store the access key and secret in GitHub repo secrets as:



