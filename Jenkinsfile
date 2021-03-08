pipeline {

    agent {
        node {
            label 'master'
        }
    }

    options {
        buildDiscarder logRotator( 
                    daysToKeepStr: '16', 
                    numToKeepStr: '10'
            )
    }

    stages {
        
        stage('Cleanup Workspace') {
            steps {
                cleanWs()
                sh """
                echo "Cleaned Up Workspace For Project"
                """
            }
        }

        //stage('Code Checkout') {
          //  steps {
            //    checkout([
              //      $class: 'GitSCM', 
                //    branches: [[name: '*/main']], 
                  //  userRemoteConfigs: [[url: 'https://github.com/spring-projects/spring-petclinic.git']]
              //  ])
          //  }
     //   }

        stage(' Unit Testing') {
            steps {
                sh """
                echo "Running Unit Tests"
                """
            }
        }

        stage('Code Analysis') {
            steps {
                sh """
                echo "Running Code Analysis"
                """
            }
        }

        stage('Build Deploy Code to develop') {
            when {
                branch 'develop'
            }
            steps {
                sh """
                echo "Building Artifact"
                """

                sh """
                echo "Deploying Code to develop"
                """
            }
        }
        
         stage('Build Deploy Code master') {
            when {
                branch 'main'
            }
            steps {
                sh """
                echo "Building Artifact"
                """

                sh """
                echo "Deploying Code to master"
                """
            }
        }

    }   
}
