pipeline {
    agent any

    environment {
        // Define environment variables
        MY_ENV_VAR = 'value'
    }

    stages {
        stage('Build') {
            steps {
                script {
                    echo "Building the project..."
                    // Add build commands here (e.g., Maven, Gradle, npm, etc.)
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    echo "Running tests..."
                    // Add test commands here (e.g., unit tests, integration tests, etc.)
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    echo "Deploying to server..."
                    // Add deploy commands here (e.g., kubectl, Docker, etc.)
                }
            }
        }
    }

    post {
        always {
            echo 'Cleaning up...'
            // Add cleanup steps if necessary
        }
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
