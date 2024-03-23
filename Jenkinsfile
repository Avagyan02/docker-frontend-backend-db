pipeline {
    agent any

    triggers {
        GenericTrigger(
            token: 'docker-frontend-token' 
        )
    }
    
    stages {
        stage('Compose Down') {
            steps {
                script {
                    sh 'cd /var/jenkins_home/workspace'
                    sh 'ls -la'
                    sh 'docker-compose down'
                    echo 'a'
                }
            }
        }

        stage('Compose Up') {
            steps {
                script {
                    sh "bash docker-compose-file-version-change.sh"                    
                    sh 'docker-compose up'
                    echo '1'
                }
            }
        }
    }
}
