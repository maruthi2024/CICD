pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID     = 'AKIA46ZDFCC7X5EFTDXR'
        AWS_SECRET_ACCESS_KEY = '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'
    }

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/maruthi2024/CICD.git'
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
