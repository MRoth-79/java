pipeline {
  agent any

  stages {
    stage('SonarQube Analysis') {
      steps {
        withSonarQubeEnv('MySonar') {
          sh 'sonar-scanner'
        }
      }
    }
  }
}
