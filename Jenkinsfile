node {
    /* Requires the Docker Pipeline plugin to be installed */

    stage('Init') {
        docker.image('manuscript/ansible-terraform').inside {
            sh 'terraform version'
        }
    }
}