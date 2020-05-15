pipeline {
  agent any

  stages {
    stage('Build') {
      steps {
        sh 'tar czvf deployruby.tar.gz *.rb'
      }
    }
    stage('Publish') {
      steps {
        archiveArtifacts 'deployruby.tar.gz'
      }
    }
}
}
