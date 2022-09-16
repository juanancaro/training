/* uses sbt, which i installed with homebrew. */
/* this works without requiring the 'sbt plugin'. */

pipeline {
    agent any
    
    options {
        ansiColor('xterm')
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

    }
}
