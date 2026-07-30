pipeline {
    agent any

    options {
        timestamps()
    }

    environment {
        PROJECT_DIR = "/workspace/project"
    }

    stages {
       stage('Update Repository') {
           steps {
               sh '''
               git config --global --add safe.directory /workspace/project

               cd /workspace/project

               git pull origin main
               '''
           }

        }

        stage('Validate Docker Compose') {
            steps {
                sh '''
                cd $PROJECT_DIR
                docker compose config
                '''
            }
        }

        stage('Deploy Monitoring Stack') {
            steps {
                sh '''
                cd $PROJECT_DIR
                docker compose up -d
                '''
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
            echo 'Deployment completed successfully.'
        }

        failure {
            echo 'Deployment failed.'
        }
    }
}
