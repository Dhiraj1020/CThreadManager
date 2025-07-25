pipeline {
    agent any

    environment {
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
                echo 'Running compiled executable for test...'
                bat '.\\main.exe'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying to deploy/ folder...'
                bat 'mkdir deploy'
                bat 'copy main.exe deploy\\main.exe'
            }
        }

        stage('Archive') {
            steps {
                echo 'Archiving the deployed executable...'
                archiveArtifacts artifacts: 'deploy/main.exe', fingerprint: true
            }
        }
    }

    post {
        success {
            echo '✅ Build, test, deploy, and archive complete!'
        }
        failure {
            echo '❌ Build pipeline failed. Please check logs.'
        }
    }
}
