pipeline {

    agent any

    stages {

        stage("build") {
            steps {
                sh "make docker-build"
            }
        }

        stage("ecr::push") {
            steps {
                withCredentials([string(credentialsId: 'AWS_ACCESS_KEY_ID', variable: 'AWS_ACCESS_KEY_ID')], ) {
                    sh "echo ${AWS_ACCESS_KEY_ID}"
                }
            }
        }

    }

}