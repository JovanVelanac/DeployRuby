pipeline {
  agent any
  parameters{
    choice(name: 'CHOICE', choices: ['staging', 'production'], description: 'Pick something')
}

  stages {
    stage('Build') {
      steps {
        sh 'tar czvf deployruby.tar.gz *.rb'
      }
    }
    stage('Deliver') {
      steps {
        ansiblePlaybook credentialsId: 'toolbox-vagrant-key', inventory: "inventories/${params.CHOICE}/hosts.ini", playbook: 'playbook.yml', disableHostKeyChecking: true
      }
    }
}
}
