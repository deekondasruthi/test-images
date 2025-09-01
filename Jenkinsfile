pipeline {
    agent any

    stages {
        stage('List') {
            steps {
                sh 'ls -l'                
            }
        }
        stage('Build') {
            steps {
                git branch: 'Dev', credentialsId: 'test', url: 'https://github.com/deekondasruthi/test-images.git'
            }
        }
        stage('Echo') {
            steps {
                sh 'echo "This is Development Branch'
            }
        }
    }
}
