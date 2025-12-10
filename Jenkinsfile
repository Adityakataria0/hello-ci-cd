pipeline {
    agent any

    stages {
        stage('Build with Maven') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t hello-ci-cd-pipeline:latest .'
            }
        }

        stage('Test Run') {
            steps {
                sh 'docker run --rm hello-ci-cd-pipeline:latest'
            }
        }
    }
}
