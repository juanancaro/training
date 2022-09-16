/* uses sbt, which i installed with homebrew. */
/* this works without requiring the 'sbt plugin'. */

pipeline {
    agent any
    
    options {
        ansiColor('xterm')
    }
    
    environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub-cred-juacarleo')
	}

    stages {

        stage('Compile') {
            steps {
                echo "Compiling..."
                sh "/usr/bin/sbt compile"
            }
        }

        stage('Test') {
            steps {
                echo "Testing..."
                sh "/usr/bin/sbt test"
            }
        }

        stage('Package') {
            steps {
                echo "Packaging..."
                sh "/usr/bin/sbt package"
            }
        }
        stage('Build') {

			steps {
				sh 'docker build -t juyashuiasd/training:latest .'
			}
		}

	stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push juyashuiasd/training:latest'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}
}
