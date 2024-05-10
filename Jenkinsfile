pipeline {

    agent any

    stages {

        stage("build") {
            steps {
                sh "docker build -t vestht:latest ."
            }
        }

        stage("ecr::push") {
            steps {
                withCredentials([string(credentialsId: 'AWS_ACCESS_KEY_ID', variable: 'AWS_ACCESS_KEY_ID'), string(credentialsId: 'AWS_SECRET_ACCESS_KEY', variable: 'AWS_SECRET_ACCESS_KEY')]) {
                    sh "export AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}"
                    sh "export AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}"
                    sh "export AWS_DEFAULT_REGION=ap-southeast-1"
                    sh "aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin 212994986522.dkr.ecr.ap-southeast-1.amazonaws.com"
                    sh "docker tag vestht:latest 212994986522.dkr.ecr.ap-southeast-1.amazonaws.com/vestht:latest"
                }
            }
        }

    }

}