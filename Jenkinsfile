pipeline {
    agent any

    environment {
        PATH = "C:\\msys64\\ucrt64\\bin;${env.PATH}" 
    }

    stages {
        stage('Build') {
            steps {
                echo 'Checking compiler'
                bat 'g++ --version'

                echo 'Building...'
                bat 'make'
            }
        }

        stage('Test') {
            steps {
                bat 'main.exe'
            }
        }

        stage('Deploy') {
            steps {
                bat 'echo Deploying...'
            }
        }
    }

    post {
        always {
            bat 'make clean'
        }
    }
}
