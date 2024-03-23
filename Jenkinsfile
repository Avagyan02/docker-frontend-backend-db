pipeline {
    agent any

    triggers {
        GenericTrigger(
            token: 'docker-devops-token' 
        )
    }
    
    stages {
        stage('Compose Down') {
            steps {
                script {
                    sh 'docker-compose down'
                }
            }
        }

        stage('Compose Up') {
            steps {
                script {
                    sh "bash docker-compose-file-version-change.sh"                    
                    sh 'docker-compose up'
                }
            }
        }
    }
}
