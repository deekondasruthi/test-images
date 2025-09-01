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
    }
}
