# Nginx-docker-container
A secure and scalable AWS environment by deploying an NGINX service in an ECS cluster

I'm thrilled to share my recent experience working on an AWS project that involved creating a robust and scalable web application. Here’s a breakdown of the key components and phases of the project:

Phase 1: Infrastructure Setup and Service Deployment
Virtual Private Cloud (VPC) & Subnets:

Created a custom VPC with two subnets to ensure network isolation and security.
Configured routing tables and implemented Network Access Control Lists (NACLs) with specific rules to restrict inbound and outbound traffic, enhancing the security posture.
Elastic Container Service (ECS):

Set up an ECS cluster on one of the subnets, running a service managed by Docker.
Deployed an NGINX Docker container that serves a custom web page displaying “Hello” along with a logo.
Database Integration:

Launched an RDS instance with MySQL to manage the backend database.
Configured the NGINX container to query the database and present the data in the HTTPS response, integrating dynamic content delivery.
Secure Access with HTTPS:

The service was exposed to the Internet over HTTPS using a self-signed TLS certificate.
Included a comprehensive guide on creating and attaching a valid HTTPS certificate to ensure secure communication.
Phase 2: Code Management and Deployment Automation
Version Control with CodeCommit:

Stored all code in AWS CodeCommit, providing a centralized and secure repository for version control and collaboration.
Continuous Integration/Continuous Deployment (CI/CD):

Implemented an automated CI/CD pipeline using CodePipeline, ensuring seamless deployment of updated Docker containers.
The pipeline facilitated the deployment of the entire infrastructure and service updates, streamlining the development process.
Infrastructure as Code:

Used CloudFormation to automate the creation of the VPC, ECS cluster, RDS database, and other AWS resources, ensuring consistent and repeatable infrastructure deployments.
Leveraged CloudFormation to also automate the setup of the CodePipeline, further enhancing the automation capabilities of the project.
This project not only enhanced my technical skills in AWS but also provided valuable experience in setting up a secure, scalable, and automated web application environment. I'm excited to apply these skills to future projects and continue exploring the capabilities of cloud-based solutions.

#AWS #CloudComputing #DevOps #CI_CD #InfrastructureAsCode #Docker #NGINX #CloudFormation #VPC #RDS #ECS #CodeCommit #CodePipeline
