pipeline {
    agent any

    stages {

        stage('Deploy Monitoring Stack') {
            steps {
                sh '''
                ssh -o StrictHostKeyChecking=no ubuntu@172.31.47.32 "
                cd /home/ubuntu/Cloud-native-Enterprise-Infrastructure-Monitoring-log-management-Automation-Platform &&
                git pull origin main &&
                docker compose -f docker-compose.monitoring.yml up -d --remove-orphans
                "
                '''
            }
        }

        stage('Verify Deployment') {
            steps {
                sh '''
                ssh -o StrictHostKeyChecking=no ubuntu@172.31.47.32 "docker ps"
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
