node {
    /* Requires the Docker Pipeline plugin to be installed */
    checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/manukyanv07/terraform-ansible-poc.git']]])
    stage('run cookbook') {
        ansiblePlaybook 'ansible/terraform-module.yml'
    }

}