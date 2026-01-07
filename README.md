# AWS-Terraform-Jenkins-REST-Pipeline

The goal of this project is to provision cloud infrastructure using **Terraform** and manage infrastructure lifecycle operations (**plan, apply, destroy**) through a **Jenkins Declarative Pipeline** running on AWS EC2.

The setup follows Infrastructure as Code (IaC) and CI/CD best practices.

---

## High-Level Architecture

- Jenkins runs on an **EC2 instance**
- Infrastructure is provisioned using **Terraform**
- **Remote Terraform state** is stored in **Amazon S3**
- Pipeline supports:
  - Terraform Init
  - Terraform Plan
  - Terraform Apply
  - Terraform Destroy
- Optional application layer includes a **REST API** connected to **RDS (MySQL)**


## Tools & Technologies

- **AWS** (EC2, VPC, Subnets, S3, RDS)
- **Terraform**
- **Jenkins**
- **GitHub**
- **Linux / Bash**
- **Python (REST API – optional)**

---

## Jenkins Pipeline Stages

The Jenkins pipeline executes the following stages:

1. Checkout SCM
2. Terraform Init
3. Terraform Plan
4. Terraform Apply (manual approval)
5. Terraform Destroy (manual approval)

Pipeline execution screenshots and timing details are available in the PDF documentation.

---

## Terraform State Management

- Terraform uses an **S3 remote backend**
- State files are **not committed to Git**
- `.terraform/` and `terraform.tfstate` are ignored via `.gitignore`

---
