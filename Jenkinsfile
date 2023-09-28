pipeline{
    agent any
    //environment {}
    stages{
		stage ('build') {
            steps {
                sh 'bash ${WORKSPACE}/start.sh'
            }
        }
        stage ('test') {
            steps {
               echo 'test'
            }        
        }
        stage ('deploy') {
            steps {
                echo 'deploy'
            }
        }
    }
}