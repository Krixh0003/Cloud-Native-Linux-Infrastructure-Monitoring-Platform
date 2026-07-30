pipeline {
    agent any

    options {
        timestamps()
    }

    environment {
        REMOTE_HOST = "172.31.47.32"
        REMOTE_USER = "ubuntu"
        PROJECT_DIR = "/home/ubuntu/Cloud-native-Enterprise-Infrastructure-Monitoring-log-management-Automation-Platform"
    }

    stages {

        stage('Deploy Monitoring Stack') {
            steps {
                sh """
                ssh -o StrictHostKeyChecking=no ${REMOTE_USER}@${REMOTE_HOST} '
                    cd ${PROJECT_DIR}

                    echo "========== Pulling Latest Code =========="
                    git pull origin main

                    echo "========== Starting Monitoring Stack =========="
                    docker compose -f docker-compose.monitoring.yml up -d
                '
                """
            }
        }

        stage('Verify Deployment') {
            steps {
                sh """
                ssh -o StrictHostKeyChecking=no ${REMOTE_USER}@${REMOTE_HOST} '
                    echo "========== Running Containers =========="
                    docker ps

                    echo ""
                    echo "========== Docker Compose Projects =========="
                    docker compose ls
                '
                """
            }
        }
    }

    post {
        success {
            echo "Deployment Successful"
        }

        failure {
            echo "Deployment Failed"
        }

        always {
            cleanWs()
        }
    }
}
