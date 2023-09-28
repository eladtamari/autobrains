pipeline{
    agent any
    environment {
	app="docker.test" 
    }
    stages{
		stage ('build') {
            steps {
                sh 'bash ${WORKSPACE}/start.sh'
            }
        }
        stage ('test') {
            steps {
               echo 'test'
	       script {
		 sh "docker rm -f ${app}"
	       }
            }        
        }
        stage ('deploy') {
            steps {
		script {
                  echo 'deploy'
		  sh "docker run --rm -d -p 8081:80 --name=${app} -v $PWD:/app/tests ${app}"
		}
            }
        }
    }
}
