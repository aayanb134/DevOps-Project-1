# Project: Simple API App with Docker, AWS, Terraform, and CI/CD

## Description

This project demonstrates the setup of a simple API app using Docker, deployed on AWS using Fargate or EKS. The infrastructure is defined and managed using Terraform, and CI/CD pipelines are established for both infrastructure and application deployments. Additionally, routes are published for the API Gateway.

## Pushing your Docker Image to ECR

1. Authenticate Docker
   `aws ecr get-login-password --region <your-region> | docker login --username AWS --password-stdin <your-account-id>.dkr.ecr.<your-region>.amazonaws.com`
2. Create an ECR repository
   `aws ecr create-repository --repository-name your-repo-name --region <your-region>`
3. Tag and Push your Docker Image
   `docker tag your-image-name:latest <your-account-id>.dkr.ecr.<your-region>.amazonaws.com/your-repo-name:latest`
   `docker push <your-account-id>.dkr.ecr.<your-region>.amazonaws.com/your-repo-name:latest`
