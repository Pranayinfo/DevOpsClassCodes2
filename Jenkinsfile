pipeline {
    agent any

    stages {
        stage('Git') {
            steps {
                git 'https://github.com/Pranayinfo/DevOpsClassCodes2.git'
            }
        }
        stage('Ansible deploy on prod') {
            steps {
                ansiblePlaybook credentialsId: 'slave_prod', disableHostKeyChecking: true, installation: 'myansible', inventory: 'dev.in', playbook: 'playbook.yaml'
            } 
    
        }    
   }
}
