pipeline {
    agent any

    stages {

        stage('Build Image') {
            steps {
                sh 'docker build -t my-web-app:v1 .'
            }
        }

        stage('Deploy Container') {
            steps {
                sh '''
                docker rm -f my-web-container || true

                docker run -d \
                --name my-web-container \
                -p 8082:80 \
                my-web-app:v1
                '''
            }
        }
    }
}
