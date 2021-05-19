pipeline {

    //agent none
    agent {label 'master'}
    
    environment {
        PASS = credentials('registry-pass') 
    }
    
    parameters {
        choice(name: 'DEPLOY_TAG', choices: ['Dev', 'Prod'], description: 'Deploy Environment')
    }

    stages {

        stage('Build') {
            //agent {label 'node2'}
            steps {
                sh '''
                    ./jenkins/build/build.sh $DEPLOY_TAG
                '''
            }

        }

        stage('Push') {
            //agent {label 'node2'}
            steps {
                sh './jenkins/push/push.sh'
            }
        }

        stage('Deploy') {
            //agent {label 'node1'}
            steps {
                sh './jenkins/deploy/deploy.sh'
            }
        }
    }
}
