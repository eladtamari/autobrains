pipeline{
    agent {label 'gpu'}
    //environment {}
    stages{
		stage ('build') {
            steps {
                sh 'bash %{WORKSPACE}/start.sh'
            }
            
        }
    }

}