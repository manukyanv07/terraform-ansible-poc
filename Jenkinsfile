node {
    /* Requires the Docker Pipeline plugin to be installed */

    stage('Init') {
        docker.image('manuscript/ansible-terraform:latest').inside {
            sh 'terraform version'
        }
    }
}