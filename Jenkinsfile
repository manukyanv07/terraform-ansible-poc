node {
    properties([parameters([booleanParam(defaultValue: true, description: '', name: 'plan_only'), choice(choices: ['dev', 'stage', 'prod'], description: '', name: 'env'), booleanParam(defaultValue: false, description: '', name: 'auto_apply')])])
    /* Requires the Docker Pipeline plugin to be installed */
    stage('run cookbook') {
        checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/manukyanv07/terraform-ansible-poc.git']]])
        ansiblePlaybook extras: '-e "env=\'${env}\' ${plan_only?"--check"}"', installation: 'ansible', playbook: 'ansible/terraform-module.yml'
    }

}