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
               sh '/usr/bin/nosetests --with-xunit --all-modules --traverse-namespace --with-coverage --cover-package=/opt/zhanzhao/project1 --cover-inclusive'
		junit 'nosetests.xml'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
