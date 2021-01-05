pipeline {
    agent {
        docker {
            image 'jamesdbloom/docker-java8-maven:latest' 
            args '-v /root/.m2:/root/.m2' 
        }
    }
    stages {
        stage('Set Up') {
            steps {
                script {
                    sh 'rm -rf maven.java-fundamentals'
                }
            }
        }
        stage('SCM Checkout') {
            steps {
                sh 'git clone https://github.com/nmm131/jenkins.docker.maven_java-fundamentals.git'
            }
        }
        stage('Compile-Package-Test') {
            steps {
                script {
                    dir('./jenkins.docker.maven_java-fundamentals') {
                        sh "mvn package -Dmaven.test.failure.ignore=true"
                    }
                }
            }
        }
    }
}
