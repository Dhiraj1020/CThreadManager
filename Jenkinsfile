pipeline {
    agent any

    environment {
        PATH = "C:\\msys64\\ucrt64\\bin;${env.PATH}"
    }

    stages {
        stage('Verify Compiler and Make') {
            steps {
                echo 'Checking g++ and make...'

                bat 'echo PATH=%PATH%'
                bat 'where g++'
                bat 'g++ --version'
                bat 'where make'
                bat 'make --version'
            }
        }
    }
}
