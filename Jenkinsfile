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
                git branch: 'Staging', credentialsId: 'test', url: 'https://github.com/deekondasruthi/test-images.git'
            }
        }
        stage('Echo') {
            steps {
                sh 'echo "This is Staging branch"'                
            }
        }
        stage('Echo stag') {
            steps {
                sh 'Success'                
            }
        }
    }
}
