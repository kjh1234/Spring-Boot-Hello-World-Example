pipeline {
  agent any
  stages {
    stage('check out source') {
      steps {
        git(url: 'https://github.com/kjh1234/Spring-Boot-Hello-World-Example.git', branch: 'master', credentialsId: 'GIT_CREDENTIALS_ID')
      }
    }

  }
  environment {
    GIT_REPOSITORY_URL = 'https://github.com/kjh1234/Spring-Boot-Hello-World-Example.git'
    GIT_CREDENTIALS_ID = 'GIT_CREDENTIALS_ID'
    GIT_BRANCH = '*/master'
  }
}