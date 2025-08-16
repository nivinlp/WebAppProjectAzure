# Use official Jenkins LTS image as base
FROM jenkins/jenkins:lts

USER root

# Install dependencies for Azure CLI and Terraform
RUN apt-get update && \
    apt-get install -y curl unzip gnupg software-properties-common apt-transport-https lsb-release && \
    apt-get clean

#Install Azure CLI
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash

#Install Terraform
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg && \
    echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
    tee /etc/apt/sources.list.d/hashicorp.list && \
    apt-get update && apt-get install -y terraform && \
    apt-get clean

#Switch user to Jenkins user
USER jenkins

#Expose Ports
EXPOSE 8080 5000

