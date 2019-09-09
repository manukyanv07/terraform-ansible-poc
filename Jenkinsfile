node {
    /* Requires the Docker Pipeline plugin to be installed */


    dockerNode('manuscript/ansible-terraform') {
        stage('Check terraform') {
            sh 'terraform version'
        }
        stage('Check ansible'){
            sy 'ansible --version'
        }
    }
}