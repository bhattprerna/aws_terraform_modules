# Terraform Modules Repository

This repository contains reusable and production-ready Terraform modules for provisioning AWS infrastructure.

## 📦 Modules Included

* **ECR Module** – Creates and manages AWS Elastic Container Registry repositories
* **ECS Module** – Provisions ECS clusters and task definitions (Fargate compatible)

## 🎯 Purpose

The goal of this repository is to:

* Promote reusable infrastructure code
* Standardize infrastructure provisioning across projects
* Enable modular and scalable Terraform architecture

## 🏗️ Usage

These modules are designed to be consumed by other Terraform repositories (child repos).

Example usage:

```hcl
module "ecr" {
  source = "git::https://github.com/<your-username>/terraform-modules.git//ecr?ref=v1.0.0"

  repo_name = "my-app-repo"
}
```

```hcl
module "ecs" {
  source = "git::https://github.com/<your-username>/terraform-modules.git//ecs?ref=v1.0.0"

  cluster_name = "my-ecs-cluster"
  task_name    = "my-task"
  image_url    = module.ecr.repository_url
}
```
## 🔐 Future Enhancements

* VPC Module
* ALB (Application Load Balancer)
* CI/CD pipelines using GitHub Actions
* Remote backend (S3 + DynamoDB)