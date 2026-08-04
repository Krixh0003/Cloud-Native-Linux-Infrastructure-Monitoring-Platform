pipeline {
    agent any

    options {
        timestamps()
    }

    environment {
        REMOTE_HOST = "172.31.47.32"
        REMOTE_USER = "ubuntu"
        PROJECT_DIR = "/home/ubuntu/Cloud-native-Enterprise-Infrastructure-Monitoring-log-management-Automation-Platform"

        SECURITY_HOST = "172.31.19.203"
        SECURITY_USER = "ubuntu"

        SSH_KEY = "/var/jenkins_home/.ssh/id_ed25519"
    }

    stages {

        stage('Deploy Monitoring Stack') {
            steps {
                sh """
                ssh -i ${SSH_KEY} \
                -o IdentitiesOnly=yes \
                -o StrictHostKeyChecking=no \
                ${REMOTE_USER}@${REMOTE_HOST} '

                    cd ${PROJECT_DIR}

                    echo "========== Pulling Latest Code =========="
                    git pull origin main

                    echo ""
                    echo "========== Starting Monitoring Stack =========="
                    docker compose -f docker-compose.monitoring.yml up -d

                '
                """
            }
        }

        stage('Verify Deployment') {
            steps {
                sh """
                ssh -i ${SSH_KEY} \
                -o IdentitiesOnly=yes \
                -o StrictHostKeyChecking=no \
                ${REMOTE_USER}@${REMOTE_HOST} '

                    echo "========== Running Containers =========="
                    docker ps

                    echo ""
                    echo "========== Docker Compose Projects =========="
                    docker compose ls

                '
                """
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
                ssh -i ${SSH_KEY} \
                -o IdentitiesOnly=yes \
                -o StrictHostKeyChecking=no \
                ${REMOTE_USER}@${REMOTE_HOST} '

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
                    echo "Checking Grafana..."
                    curl -fs http://localhost:3000/api/health

                    echo ""
                    echo "Checking Nginx..."
                    curl -fs http://localhost

                    echo ""
                    echo "Checking Nginx Status..."
                    curl -fs http://localhost/nginx_status

                    echo ""
                    echo "All Monitoring Services Healthy."

                '
                """
            }
        }

        stage('Run Security Scan') {
            steps {
                sh """
                ssh -i ${SSH_KEY} \
                -o IdentitiesOnly=yes \
                -o StrictHostKeyChecking=no \
                ${SECURITY_USER}@${SECURITY_HOST} '

                    cd ~/Cloud-native-Enterprise-Infrastructure-Monitoring-log-management-Automation-Platform

                    mkdir -p AWS-Security-Reports

                    echo ""
                    echo "========== Running Trivy =========="

                    sudo trivy image nginx:latest \
                        --format table \
                        --output AWS-Security-Reports/trivy-report.txt

                    echo ""
                    echo "========== Running Lynis =========="

                    sudo lynis audit system \
                        --quick \
                        --logfile AWS-Security-Reports/lynis.log \
                        --report-file AWS-Security-Reports/lynis-report.dat

                    echo ""
                    echo "Security Scan Completed."

                '
                """
            }
        }

        stage('Collect Security Reports') {
            steps {
                sh """
                rm -rf security-reports
                mkdir -p security-reports

                scp -i ${SSH_KEY} \
                -o IdentitiesOnly=yes \
                -o StrictHostKeyChecking=no \
                ${SECURITY_USER}@${SECURITY_HOST}:~/Cloud-native-Enterprise-Infrastructure-Monitoring-log-management-Automation-Platform/AWS-Security-Reports/* \
                security-reports/
                """
            }
        }
    }

    post {

        success {
            echo "Deployment and Security Scan Successful"
        }

        failure {
            echo "Pipeline Failed"
        }

        always {
            archiveArtifacts artifacts: 'security-reports/*', fingerprint: true
            cleanWs()
        }
    }
}
