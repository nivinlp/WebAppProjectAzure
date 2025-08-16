
pipeline {
    agent any
    environment {
        ARM_CLIENT_ID       = credentials('azure-client-id')
        ARM_CLIENT_SECRET   = credentials('azure-client-secret')
        ARM_SUBSCRIPTION_ID = credentials('azure-subscription-id')
        ARM_TENANT_ID       = credentials('azure-tenant-id')  
    }
    options {
        skipDefaultCheckout(true)
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main',
                    credentialsId: 'github-credentials', 
                    url: 'https://github.com/nivinlp/azureWebAppProject.git'
            }
        }

        stage('Terraform init & apply') {
            steps {
                dir('terraform') {
                sh 'terraform init'
                sh 'terraform apply -auto-approve'
                }
            }
        }
   
        stage('Deploy App') {
            steps {
                sh '''
                    cd app
                    az login --service-principal -u $ARM_CLIENT_ID -p $ARM_CLIENT_SECRET --tenant $ARM_TENANT_ID
                    az webapp up --name nv-webapp --resource-group nv-app-rg --location "West US 2"
                    '''   
                }   
            
        }
            
    }
        
}

