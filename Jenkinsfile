pipeline {
   stages {
        stage('Checkout') {
            steps {
                echo 'Checking out code...'
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo 'Building the project...'
                bat 'make'
            }
        }

        stage('Test') {
            steps {
                echo 'Running the program...'
                bat 'main.exe'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploy stage (placeholder)...'
                // Replace below with real deploy commands if needed
                bat 'echo Deploying app...'
            }
        }
    }

    post {
        always {
            echo 'Cleaning up...'
            bat 'make clean'
        }
    }
}
