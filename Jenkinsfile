node {
    /* Requires the Docker Pipeline plugin to be installed */
    stage('run cookbook') {
        checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/manukyanv07/terraform-ansible-poc.git']]])
        ansiblePlaybook extras: 'env=stage', installation: 'ansible', playbook: 'ansible/terraform-module.yml'
    }

}