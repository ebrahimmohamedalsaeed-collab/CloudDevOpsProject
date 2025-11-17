# 🚀 Terraform Infrastructure – CloudDevOpsProject

## 📌 Overview

The Terraform layer of this project manages the entire AWS infrastructure using Infrastructure as Code (IaC).
The structure is designed to be clean, modular, scalable, and production-ready, with full support for multiple environments such as dev and prod (you currently work only on dev).

In addition, the Terraform setup integrates AWS CloudWatch to provide centralized logging, metrics, alerting, and observability for your EKS cluster, worker nodes, and application workloads. CloudWatch receives:

## Infra of Terraform
![Second Architecture Diagram](https://raw.githubusercontent.com/ebrahimmohamedalsaeed-collab/CloudDevOpsProject/main/terraform/screenshots/diagram-export-17-11-2025-09_40_02.png)

## Folder Structure (Exactly as You Built It)
```
CloudDevOpsProject/
└── terraform/
    ├── modules/
    │   ├── vpc/
    │   │   ├── main.tf
    │   │   ├── variables.tf
    │   │   └── outputs.tf
    │   ├── eks/
    │   │   ├── main.tf
    │   │   ├── variables.tf
    │   │   └── outputs.tf
    │   └── nodegroup/
    │       ├── main.tf
    │       ├── variables.tf
    │       └── outputs.tf
    ├── environments/
    │   └── dev/
    │       ├── main.tf
    │       ├── providers.tf
    │       ├── variables.tf
    │       └── terraform.tfvars
    └── backend/
        ├── s3.tf
        └── dynamodb.tf
```

## 🎯 Purpose of Each Component

### 🔹 modules/

Reusable modules that define core infrastructure pieces:

vpc/

Creates the Virtual Private Cloud

Public and Private Subnets

Route Tables

Internet Gateway

NAT gateway (if applicable)

eks/

Creates the EKS Cluster

Control plane configuration

IAM roles and permissions

nodegroup/

Creates Managed Node Groups

Autoscaling settings

IAM roles for EC2 worker nodes

### 🔹 environments/dev/

Your active working environment.

main.tf
Calls all modules (VPC, EKS, NodeGroup).

providers.tf
AWS provider setup + region selection (us-east-1).

variables.tf
Input variables for the dev environment.

terraform.tfvars
Actual values for:

Cluster name

Instance type

Node count

CIDR blocks

Tags

Any environment-specific configuration

### 🔹 backend/

Remote state configuration:

s3.tf
Defines S3 bucket for Terraform remote state.

dynamodb.tf
Defines DynamoDB table for state locking to prevent race conditions.

<p align="center">
  <img src="https://raw.githubusercontent.com/ebrahimmohamedalsaeed-collab/CloudDevOpsProject/main/terraform/screenshots/Screenshot%20(337).png" width="30%">
  <img src="https://raw.githubusercontent.com/ebrahimmohamedalsaeed-collab/CloudDevOpsProject/main/terraform/screenshots/Screenshot%20(338).png" width="30%">
  <img src="https://raw.githubusercontent.com/ebrahimmohamedalsaeed-collab/CloudDevOpsProject/main/terraform/screenshots/Screenshot%20(339).png" width="30%">
</p>

<p align="center">
  <img src="https://raw.githubusercontent.com/ebrahimmohamedalsaeed-collab/CloudDevOpsProject/main/terraform/screenshots/Screenshot%20(340).png" width="30%">
  <img src="https://raw.githubusercontent.com/ebrahimmohamedalsaeed-collab/CloudDevOpsProject/main/terraform/screenshots/Screenshot%20(341).png" width="30%">
  <img src="https://raw.githubusercontent.com/ebrahimmohamedalsaeed-collab/CloudDevOpsProject/main/terraform/screenshots/Screenshot%20(345).png" width="30%">
</p>

<p align="center">
  <img src="https://raw.githubusercontent.com/ebrahimmohamedalsaeed-collab/CloudDevOpsProject/main/terraform/screenshots/Screenshot%20(347).png" width="30%">
  <img src="https://raw.githubusercontent.com/ebrahimmohamedalsaeed-collab/CloudDevOpsProject/main/terraform/screenshots/Screenshot%20(348).png" width="30%">
  <img src="https://raw.githubusercontent.com/ebrahimmohamedalsaeed-collab/CloudDevOpsProject/main/terraform/screenshots/Screenshot%20(349).png" width="30%">
</p>


## 🔎 AWS CloudWatch (Monitoring & Observability)

### 📌 Overview

CloudWatch is used in the project to provide logging, metrics, alerting, and monitoring for your AWS and Kubernetes resources.

<p align="center">
  <img src="https://raw.githubusercontent.com/ebrahimmohamedalsaeed-collab/CloudDevOpsProject/main/terraform/screenshots/Screenshot%20(399).png" width="45%">
  <img src="https://raw.githubusercontent.com/ebrahimmohamedalsaeed-collab/CloudDevOpsProject/main/terraform/screenshots/Screenshot%20(395).png" width="45%">
</p>


## 📝 Summary

The Terraform configuration in this project delivers a fully automated, modular, and scalable AWS infrastructure.
It provisions core components such as VPC, EKS, Node Groups, and a secure remote backend using S3 and DynamoDB.
In addition, it integrates AWS CloudWatch to provide centralized logging, metrics, and observability for the entire Kubernetes stack, ensuring full visibility and reliable monitoring.

This Terraform setup follows best practices, supports multiple environments, and forms a stable foundation for CI/CD, GitOps, and production-grade cloud operations.


