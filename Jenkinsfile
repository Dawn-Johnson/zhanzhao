pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh """
                cd my-project
                npm install
                npm run build
                """
            }
        }
        stage('Test') {
            steps {
                sh 'npm run unit'
            }
        }
        stage('Deploy') {
            steps {
                sh 'cp -rf my-project/dist /opt'
            }
        }
    }
}
