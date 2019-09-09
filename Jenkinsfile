node {
    /* Requires the Docker Pipeline plugin to be installed */

    stage('Init') {
        docker.image('hashicorp/terraform').inside {
            sh 'terraform version'
        }
    }
}