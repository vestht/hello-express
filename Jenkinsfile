pipeline {

    agent any

    stages {

        stage("build") {
            steps {
                sh "whoami"
                sh "make docker-build"
            }
        }

    }

}