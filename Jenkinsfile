pipeline {
    agent {
        docker {
			dockerfile true
            //image 'maven:3-alpine'
            args '-v /root/.m2:/root/.m2' 
        }
    }
    stages {
        stage('SCM Checkout') {
            steps {
				script {
					sh 'git clone https://github.com/nmm131/jenkins.docker.maven_java-fundamentals'
				}
            }
        }

        stage('Compile-Package') {
            steps {
				script {
					def mvnHome = tool name: 'maven-3', type: 'maven'	
					sh "${mvnHome}/bin/mvn/package"
				}
            }
        }
    }
}
