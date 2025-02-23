pipeline {
    agent any
    environment {
        DOCKER_IMAGE = 'berezovsky8/helloworld-app'
        DOCKER_TAG = 'latest'
    }
    stages {
        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }
        stage('Docker Build & Tag') {
            steps {
                script {
                    // Build the Docker image from the Dockerfile in the repo
                    dockerImage = docker.build("${DOCKER_IMAGE}:${DOCKER_TAG}")
                }
            }
        }
        stage('Docker Push') {
            steps {
                script {
                    // Log in to Docker Hub and push the image
                    docker.withRegistry('https://index.docker.io/v1/', 'your-dockerhub-credentials') {
                        dockerImage.push()
                    }
                }
            }
        }
        stage('Docker Run') {
            steps {
                script {
                    // Run the container. This will execute the Java program,
                    // which prints "Hello, World!" to the console.
                    sh "docker run  ${DOCKER_IMAGE}:${DOCKER_TAG}"
                }
            }
        }
    }
    post {
        always {
            // Optional cleanup if needed
            echo "Pipeline complete."
        }
    }
}
