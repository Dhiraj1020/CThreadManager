pipeline {
    agent any

    environment {
        // Set path to include mingw32-make and g++
        PATH = "C:\\msys64\\ucrt64\\bin;${env.PATH}"
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                bat 'mingw32-make clean'
                bat 'mingw32-make'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests (if any)...'
                // Add test commands here, e.g. bat 'main.exe'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploy stage - add actual deployment logic here.'
            }
        }
    }

    post {
        failure {
            echo 'Build failed!'
        }
        success {
            echo 'Build succeeded!'
        }
    }
}

