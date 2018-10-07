pipeline {
    agent any

    triggers {
        pollSCM('* * * * *')
     }

stages{
        stage('Build'){
            steps {
            	sh "echo whoami"
                sh "mvn clean package"
                sh "docker build . -t imagename:${env.BUILD_ID}"
            }
            post {
                success {
                    echo "Now Archiving..."
                    archiveArtifacts artifacts: "target/*.war"
                }
            }
        }
    }
}