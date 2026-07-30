pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Deploy Monitoring Stack') {
            steps {
                sh '''
                ssh -o StrictHostKeyChecking=no ubuntu@172.31.47.32 << 'EOF'
                cd /home/ubuntu/Cloud-native-Enterprise-Infrastructure-Monitoring-log-management-Automation-Platform

                git pull origin main

                docker compose -f docker-compose.monitoring.yml up -d
                EOF
                '''
            }
        }

        stage('Verify') {
            steps {
                sh '''
                ssh -o StrictHostKeyChecking=no ubuntu@172.31.47.32 << 'EOF'
                docker ps
                EOF
                '''
            }
        }
    }

    post {
        success {
            echo 'Deployment Successful'
        }

        failure {
            echo 'Deployment Failed'
        }
    }
}
