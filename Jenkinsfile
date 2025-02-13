pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                checkout scm  // Automatically uses the repository from the webhook trigger
            }
        }

        stage('SonarQube Code Analysis') {
            steps {
                withSonarQubeEnv('SonarQube') {  
                    sh 'mvn clean verify sonar:sonar -Dsonar.projectKey=YourProject'
                }
            }
        }
    }

    post {
        success {
            echo 'SonarQube analysis completed successfully!'
        }
        failure {
            echo 'SonarQube analysis failed!'
        }
    }
}
