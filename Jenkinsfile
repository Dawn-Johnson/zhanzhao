pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
               sh '/usr/local/bin/py.test --verbose --junit-xml test-reports/results.xml ./tests/mydict_test.py || true'
 		junit 'test-reports/results.xml'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
