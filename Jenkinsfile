pipeline {
    agent any

    parameters {
    }

    triggers {
        pollSCM('* * * * *')
     }

stages{
        stage('Build'){
            steps {
                sh "mvn clean package"
                sh "docker build . -t imageName:${env.BUILD_ID}"
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