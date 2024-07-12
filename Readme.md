# Terraform CI/CD for Deploying AWS Services

![Terraform](https://img.shields.io/badge/Terraform-0.14.7-blueviolet)
![GitHub Actions](https://img.shields.io/badge/GitHub%20Actions-CI%2FCD-brightgreen)
![AWS](https://img.shields.io/badge/AWS-Cloud-orange)

## Overview

This project demonstrates how to create and manage infrastructure using Terraform and automate the deployment process using GitHub Actions as CI/CD.

## Table of Contents

- [Introduction](#introduction)
- [Terraform Modules](#terraform-modules)
- [AWS S3 Remote Backend](#aws-s3-remote-backend)
- [GitHub Actions Workflow](#github-actions-workflow)
- [Getting Started](#getting-started)
- [Usage](#usage)


## Introduction

This repository provides a modular approach to creating AWS resources such as:

- Application Load Balancer
- Security Groups
- EC2 Instances
- VPC

The deployment process is fully automated using GitHub Actions, triggered on every push to the `main` branch.

## Terraform Modules

- **VPC Module**: Creates a Virtual Private Cloud.
- **Security Groups Module**: Manages security groups.
- **EC2 Module**: Provisions EC2 instances.
- **Application Load Balancer Module**: Sets up an ALB.

## AWS S3 Remote Backend

We use AWS S3 to store the Terraform state files remotely, enabling team collaboration and state locking.

## GitHub Actions Workflow

The GitHub Actions workflow is defined in `.github/workflows/deploy.yml` and includes the following steps:

1. **Checkout Code**: Checks out the repository code.
2. **Set up Terraform**: Installs Terraform.
3. **Initialize Terraform**: Initializes Terraform configuration.
4. **Validate Terraform**: Validates the Terraform configuration.
5. **Apply Terraform**: Applies the Terraform configuration to provision resources.
6. **Destroy Terraform**: Destroys the infrastructure (commented out).

## Getting Started

**Prerequisites**

1. Terraform installed
2. AWS CLI configured with appropriate credentials
3. GitHub repository with Secrets for AWS credentials
4. Installation

- Clone the repository:

git clone https://github.com/parvez76/terraform-with-github-actions

cd your-repository

cd iaac

terraform init

## Usage

**Deploy Infrastructure:**
Push your changes to the main branch to trigger the GitHub Actions workflow:

git add .

git commit -m "Deploy infrastructure"

git push origin main

**Destroy Infrastructure:**
To destroy the infrastructure, uncomment the Terraform Apply section in the workflow and comment out the Terraform Destroy section, then push the changes.
