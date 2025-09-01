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
                sh 'echo "This is Development Branch"'
            }
        }
    }
    post {
        always {
            emailext(
                subject: "Build ${currentBuild.currentResult}: ${env.JOB_NAME} #${env.BUILD_NUMBER}",
                body: """
                    <p>Build Status: <b>${currentBuild.currentResult}</b></p>
                    <p>Application Base URL: https://satus-api.babujiventures.in</p> 
                    <p>Using application base URL you can check API performance.</p>
                    <p>Regards,</p>
                    <p>DevOps Team.</p>
                    <p>
                        <img src="https://babujiventures.in/assets/img/clients/baabuji-logo-1-cropped.png" alt="Baabuji Logo" style="height:60px;">
                    </p>  
                """,
                to: 'sruthi.d@babujiventures.in',
                attachLog: 'true',
                mimeType: 'text/html'
                
            )
        }
    }
}
