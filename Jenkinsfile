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
       


       stage('Wait for Services') {
           steps {
                   echo "Waiting 20 seconds for services to initialize..."
                   sleep(time: 20, unit: 'SECONDS')
                }
          }
       stage('Health Check') {
           steps {
               sh """
               ssh -o StrictHostKeyChecking=no ${REMOTE_USER}@${REMOTE_HOST} '
                   echo ""
                   echo "========== Health Checks =========="

                   echo ""
                   echo "Checking Prometheus..."
                   curl -fs http://localhost:9090/-/healthy

                   echo ""
                   echo "Checking Alertmanager..."
                   curl -fs http://localhost:9093/-/healthy

                   echo ""
                   echo "Checking Loki..."
                   curl -fs http://localhost:3100/ready

                   echo ""
                   echo "Checking Nginx..."
                   curl -fs http://localhost

                   echo ""
                   echo "Checking Nginx Status..."
                   curl -fs http://localhost/nginx_status

                   echo ""
                   echo "All health checks passed."
               '
               """
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
