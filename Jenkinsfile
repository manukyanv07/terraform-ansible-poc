node {
    properties([parameters([
            booleanParam(defaultValue: true, description: '', name: 'plan_only'),
            choice(choices: ['dev', 'stage', 'prod'], description: '', name: 'env'),
            booleanParam(defaultValue: false, description: '', name: 'auto_apply')])])
    /* Requires the Docker Pipeline plugin to be installed */

    stage("Checkout"){
        checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/manukyanv07/terraform-ansible-poc.git']]])
    }
    if (params.plan_only) {
        stage('Terraform Plan') {
            ansiblePlaybook extras: '-e "env=${env} --check', installation: 'ansible', playbook: 'ansible/terraform-module.yml'
        }
    }else{
        stage("Terraform apply"){
            if(!params.auto_deploy){
                input message: 'Do you want to proceed with the plan?', ok: 'Apply Terraform Plan'
            }
            ansiblePlaybook extras: '-e "env=${env}', installation: 'ansible', playbook: 'ansible/terraform-module.yml'
        }

    }

}