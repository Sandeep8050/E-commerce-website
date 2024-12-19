pipeline {
    agent any

    stages {
        // Stage 1: Build
        stage('Build') {
            steps {
                // Echo a message to indicate the build step
                sh 'echo Building Application'
                // Build the Docker image
                sh 'docker build -t my-ecommerce-app .'
            }
        }

        // Stage 2: Test
        stage('Test') {
            steps {
                // Run tests using pytest (ensure pytest is installed and tests are available)
                sh 'pytest tests/'
            }
        }

        // Stage 3: Deploy
        stage('Deploy') {
            steps {
                // Deploy the application using kubectl (ensure kubectl is configured and deployment.yaml exists)
                sh 'kubectl apply -f deployment.yaml'
            }
        }
    }
}
