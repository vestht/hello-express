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
                sh "aws s3 ls"
            }
        }

    }

}