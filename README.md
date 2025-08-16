# Azure WebApp Project with Terraform, Jenkins, and Grafana

**Weekend Learning Project:** Deploying an Azure Web App using Terraform, Docker, and Jenkins pipeline, with monitoring via Grafana.

---

## Project Overview

This project demonstrates a full pipeline to deploy an **Azure Linux Web App** using **Terraform** for infrastructure provisioning, **Jenkins** for CI/CD automation, and **Grafana** for monitoring.  

- **Infrastructure as Code:** Terraform provisions the resource group, service plan, and web app.  
- **CI/CD Pipeline:** Jenkins automates the Terraform deployment and app deployment.  
- **Monitoring:** Grafana container is set up for monitoring purposes.  
- **Dockerized Environment:** Two Docker containers are used:
  1. **Jenkins + Terraform + Azure CLI**
  2. **Grafana monitoring**

---
## Prerequisites

- **WSL (Windows Subsystem for Linux)** with Ubuntu
- **Docker & Docker Compose**
- **Azure Account** with a Service Principal
- **Jenkins credentials** for GitHub and Azure secrets

## Start Docker Containers
docker-compose up -d --build



