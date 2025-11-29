// Test update 1
pipeline {
    agent any

    environment {
        IMAGE_NAME = "angularjs-coursework-app"
        APP_PORT = "4201" 
    }

    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out code from Git...'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    echo 'Building Docker image...'
                    sh "docker build -t ${IMAGE_NAME} ."
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    echo 'Deploying application...'
                    sh "docker rm -f ${IMAGE_NAME} || true"
                    sh "docker run -d -p ${APP_PORT}:80 --name ${IMAGE_NAME} ${IMAGE_NAME}"
                }
            }
        }
        
        stage('Test') {
            steps {
                 script {
                    sh "docker ps | grep ${IMAGE_NAME}"
                    echo "Application is running on port ${APP_PORT}"
                 }
            }
        }
    }
}