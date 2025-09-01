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
        success {
            emailext(
                subject: "Build SUCCESS: ${env.JOB_NAME} #${env.BUILD_NUMBER}",
                body: """
                    <p>Build Status: <b> style="color:green;"> SUCCESS </b></p>
                    <p>Application API Base URL: https://satus-api.babujiventures.in</p> 
                    <p>Using the above base URL, you can test API endpoints and check service performance.</p>
                    <br/>
                    <p>Branch: ${evn.GIT_BRANCH}</p>
                    <p>Triggered By: ${currentBuild.getBuildCauses()[0].userName}</p>
                    <br/>
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
        failure {
            emailext(
                subject: "Build FAILED: ${env.JOB_NAME} #${env.BUILD_NUMBER}",
                body: """
                    <p>Build Status: <b> style="color:red;"> FAILED </b></p>
                    <p>Branch: ${evn.GIT_BRANCH}</p>
                    <p>Please review the attached build.log file to identify the issue.</p>
                    <br/>
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
