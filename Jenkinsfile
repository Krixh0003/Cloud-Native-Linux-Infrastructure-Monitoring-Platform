pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Validate Docker Compose') {
            steps {
                sh '''
                ssh -o StrictHostKeyChecking=no ubuntu@172.31.47.32 '
                    cd /home/ubuntu/Cloud-native-Enterprise-Infrastructure-Monitoring-log-management-Automation-Platform
                    docker compose config > /dev/null
                '
                '''
            }
        }

        stage('Deploy') {
            steps {
                sh '''
                ssh -o StrictHostKeyChecking=no ubuntu@172.31.47.32 '
                    cd /home/ubuntu/Cloud-native-Enterprise-Infrastructure-Monitoring-log-management-Automation-Platform

                    git pull origin main

                    docker compose up -d
                '
                '''
            }
        }

        stage('Verify Containers') {
            steps {
                sh '''
                ssh -o StrictHostKeyChecking=no ubuntu@172.31.47.32 '
                    docker ps
                '
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
