node {
    /* Requires the Docker Pipeline plugin to be installed */
    dockerNode('manuscript/ansible-terraform') {
        checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/manukyanv07/terraform-ansible-poc.git']]])
        stage('Check terraform') {
            sh 'terraform version'
        }
        stage('Check ansible'){
            sy 'ansible --version'
        }
    }
}