pipeline {
  agent any

  tools {
    sonarQubeScanner 'SonarScanner'
  }

  stages {
    stage('SonarQube Analysis') {
      steps {
        // This block injects the SonarQube server environment (token, URL)
        withSonarQubeEnv('MySonar') {
          // Run the scanner command
          sh 'sonar-scanner'
        }
      }
    }
  }
}
