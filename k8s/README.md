# Kubernetes — CloudDevOpsProject

This folder contains all Kubernetes manifests required to deploy your application to the EKS cluster (dev environment).
It also includes the ArgoCD configuration used for GitOps-based automatic deployments.

## Folder Structure 
```
k8s/
├── deployment.yaml
├── service.yaml
├── configmap.yaml
├── namespace.yaml
├── ingress.yaml
│
└── argocd/
    ├── application.yaml
    └── project.yaml
```
## 1️⃣ Exposing the Application Using Service Type: LoadBalancer

This method directly creates an external Load Balancer through AWS (ELB/ALB).
It allows accessing the application through a public external IP automatically created by AWS.

Used when:

I needed a simple and fast way to expose the application.

No Ingress controller was required.

The Service type was set to:

type: LoadBalancer

<p align="center">
  <img src="https://raw.githubusercontent.com/ebrahimmohamedalsaeed-collab/CloudDevOpsProject/main/k8s/screenshoots/Screenshot%20(354).png" width="55%">
  <img src="https://raw.githubusercontent.com/ebrahimmohamedalsaeed-collab/CloudDevOpsProject/main/k8s/screenshoots/Screenshot%20(355).png" width="45%">
</p>

## 2️⃣ Exposing the Application Using Ingress + NGINX Controller

The second approach uses Ingress along with the NGINX Ingress Controller to route external traffic.

Used when:

I needed more routing control.

Cleaner URLs / domain support.

Multiple apps routed through the same Load Balancer.

Better production-grade traffic management.

This method uses:

ingress.yaml

NGINX Ingress Controller installed in the cluster

<p align="center">
  <img src="https://raw.githubusercontent.com/ebrahimmohamedalsaeed-collab/CloudDevOpsProject/main/k8s/screenshoots/Screenshot%20(359).png" width="55%">
  <img src="https://raw.githubusercontent.com/ebrahimmohamedalsaeed-collab/CloudDevOpsProject/main/k8s/screenshoots/Screenshot%20(357).png" width="45%">
</p>

## ArgoCD — GitOps Deployment

In this project, I used ArgoCD to automate the deployment process using a full GitOps workflow.

<p align="center">
  <img src="https://raw.githubusercontent.com/ebrahimmohamedalsaeed-collab/CloudDevOpsProject/main/k8s/argocd/Screenshot%20(390).png" width="70%">
</p>

 <p align="center">
  <img src="https://raw.githubusercontent.com/ebrahimmohamedalsaeed-collab/CloudDevOpsProject/main/k8s/argocd/Screenshot%20(394).png" width="70%">
</p>

<p align="center">
  <img src="https://raw.githubusercontent.com/ebrahimmohamedalsaeed-collab/CloudDevOpsProject/main/k8s/argocd/Screenshot%20(392).png" width="70%">
</p>




