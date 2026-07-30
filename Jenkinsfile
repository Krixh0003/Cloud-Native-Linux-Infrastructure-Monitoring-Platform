pipeline {
    agent any

    options {
        timestamps()
    }

    stages {

        stage('Create Environment File') {
            steps {
                writeFile file: '.env', text: '''
GF_SECURITY_ADMIN_USER=admin
GF_SECURITY_ADMIN_PASSWORD=admin

PROMETHEUS_CONTAINER=prometheus
PROMETHEUS_PORT=9090

GRAFANA_CONTAINER=grafana
GRAFANA_PORT=3000

LOKI_CONTAINER=loki
LOKI_PORT=3100

ALERTMANAGER_CONTAINER=alertmanager
ALERTMANAGER_PORT=9093

BLACKBOX_CONTAINER=blackbox-exporter
BLACKBOX_PORT=9115

TZ=Asia/Kolkata
'''
            }
        }

        stage('Validate Docker Compose') {
            steps {
                sh 'docker compose config'
            }
        }

        stage('Deploy Monitoring Stack') {
            steps {
                sh 'docker compose up -d'
            }
        }

        stage('Verify Running Containers') {
            steps {
                sh 'docker ps'
            }
        }
    }

    post {
        success {
            echo '✅ Deployment completed successfully.'
        }

        failure {
            echo '❌ Deployment failed.'
        }
    }
}
