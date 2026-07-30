pipeline {
    agent any

    options {
        timestamps()
    }

    environment {
        PROJECT_DIR = "/home/ubuntu/Cloud-native-Enterprise-Infrastructure-Monitoring-log-management-Automation-Platform"
    }

    stages {

        stage('Update Repository') {
            steps {
                sh '''
                cd $PROJECT_DIR
                git pull origin main
                '''
            }
        }

        stage('Validate Compose') {
            steps {
                sh '''
                cd $PROJECT_DIR
                docker compose config
                '''
            }
        }

        stage('Deploy') {
            steps {
                sh '''
                cd $PROJECT_DIR
                docker compose up -d
                '''
            }
        }

        stage('Verify') {
            steps {
                sh '''
                docker ps
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
