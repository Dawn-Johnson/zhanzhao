pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh """
		cd my-project 
                npm run build
                """
            }
        }
        stage('Test') {
            steps {
                sh """
                cd my-project
                npm run unit
                """
            }
        }
        stage('Deploy') {
            steps {
                sh 'cp -rf my-project/dist /opt'
            }
        }
    }
}
