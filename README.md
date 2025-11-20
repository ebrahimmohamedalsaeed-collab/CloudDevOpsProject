<h1 align="center" style="font-size: 40px;">🚀 Enterprise-Grade Cloud-Native DevOps Platform on AWS EKS (Terraform • GitHub Actions • ArgoCD • Ansible • ECR • CloudWatch)</h1>

<h3 align="center">Fully Automated, Production-Ready Kubernetes Infrastructure with GitOps, CI/CD, Immutable Deployments & End-to-End Observability</h3>

## 📖 Overview

This project represents a fully automated, enterprise-grade Cloud-Native DevOps platform built on Amazon EKS, following modern production best practices used by top companies.
It provides a complete end-to-end solution that covers:


- [Infrastructure provisioning](#infrastructure-provisioning)
- [Application deployment](#application-deployment)
- [CI/CD automation](#cicd-automation)
- [GitOps workflows](#gitops-workflows)
- [Container image management](#container-image-management)
- [Observability & logging](#observability--logging)
- [Environment configuration](#environment-configuration)

Everything is automated using Terraform, Kubernetes, ArgoCD, GitHub Actions, Ansible, ECR, and CloudWatch, delivering a system that is secure, scalable, self-healing, and production-ready.

## Infra of CloudDevproject 

![CloudDevOps Architecture](https://raw.githubusercontent.com/ebrahimmohamedalsaeed-collab/CloudDevOpsProject/main/screenshots/clouddev2.png)


## 🔥 Key Capabilities

### 🏗️ Infrastructure as Code (Terraform)
```
- Fully modular Terraform setup.
- Automated provisioning of:
- VPC, Subnets, Route tables
- Amazon EKS Cluster
- Managed Node Groups
- ECR Repository
- IAM Roles & Permissions
- CloudWatch Log Groups
- Supports multi-environment structure (dev, prod-ready).
```

### ☸️ Amazon EKS (Elastic Kubernetes Service)
```
- Fully managed, production-grade Kubernetes cluster on AWS.  
- Automates control plane, API server, and node provisioning.  
- Ensures high availability, scalability, and self-healing workloads.  
- Seamlessly integrates with AWS services (ECR, CloudWatch, IAM, ALB Ingress).  
- Provides secure, isolated worker nodes using managed node groups.
```


### ☸️ Kubernetes (K8s)
```
- Orchestrates containerized applications with high availability and self-healing.  
- Manages deployments, scaling, rollouts, and rollbacks automatically.  
- Provides service discovery, load balancing, and configuration management.  
- Uses Deployments, Services, ConfigMaps, and Ingress for application workflows.  
- Environment-specific customization handled via kustomize overlays.
```
### 🐧 Configuration Management (Ansible)
```
- Automated installation of Kubernetes tools.
- Environment preparation (CloudShell / EC2).
- Integration with CloudWatch log agents.
- Dynamic inventory support.
```

### ⚙️ GitHub Actions CI/CD
```
- Build → Scan → Push → Deploy
- Steps include:
- Docker image build
- Push to ECR
- Update manifests if needed
- Trigger GitOps deployment automatically
```

### 🚀 ArgoCD (GitOps Engine) 
```
- Declarative application deployment synced directly from the Git repository.  
- Continuously monitors repository changes and applies them to the EKS cluster.  
- Provides automatic rollouts, health checks, and self-healing GitOps workflows.  
- Offers a visual dashboard to track application status and manifests.  
- Integrates with kustomize overlays for environment-based GitOps deployments.
```


### 🐳 Container Image Management (ECR)
```
- Secure private image registry using AWS ECR.
- Automated versioning and pushing from CI pipeline.
```


### 📊 Monitoring & Logging (CloudWatch)
```
- Centralized logs using aws-for-fluent-bit.
- Application + cluster logs flow to CloudWatch Log Groups.
- No Prometheus used — fully AWS-native observability.
```
### ⭐ Project Highlights
```
- Fully automated cloud-native DevOps platform deployed on AWS.
- Infrastructure provisioned end-to-end using Terraform modules (VPC, EKS, ECR, IAM, CloudWatch).
- Secure and scalable Kubernetes environment using Amazon EKS with managed node groups.
- CI/CD pipeline built with GitHub Actions handling build → scan → push → deploy.
- GitOps workflow using ArgoCD for continuous sync and declarative deployments.
- Nginx Ingress and LoadBalancer approaches demonstrated for traffic routing.
- CloudWatch used for centralized observability with aws-for-fluent-bit.
- Ansible used for environment preparation, tooling installation, and dynamic inventory.
- Fully structured Kubernetes manifests using Kustomize (base + overlays/dev).
```




