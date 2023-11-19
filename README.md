# Project: Simple API App with Docker, AWS, Terraform, and CI/CD

## Description

This project demonstrates the setup of a simple API app using Docker, deployed on AWS using Fargate or EKS. The infrastructure is defined and managed using Terraform, and CI/CD pipelines are established for both infrastructure and application deployments. Additionally, routes are published for the API Gateway.

## Prerequisites

Ensure you have the following tools installed:

- Docker
- Terraform
- AWS CLI
- AWS Account with necessary permissions

## Project Structure

/project
├── app # API App source code
│ ├── Dockerfile # Docker configuration
│ ├── app.py # Your API app code
│ └── ...
├── terraform # Terraform configurations
│ ├── main.tf # Main infrastructure configuration
│ ├── variables.tf # Variable definitions
│ └── ...
├── .github # CI/CD configurations
│ ├── workflows
│ │ ├── infra-deploy.yml # Infrastructure deployment pipeline
│ │ └── app-deploy.yml # App deployment pipeline
│ └── ...
└── ...
