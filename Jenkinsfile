pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'ls -l'
                
            }
        }
        stage('Build') {
            steps {
                git branch: 'Dev', credentialsId: 'test', url: 'https://github.com/deekondasruthi/test-images.git'
            }
        }
    }
}
