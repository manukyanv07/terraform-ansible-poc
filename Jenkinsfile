node {
    /* Requires the Docker Pipeline plugin to be installed */

    stage('Init') {
        dockerNode('manuscript/ansible-terraform') {
            sh 'terraform version'
        }
    }
}