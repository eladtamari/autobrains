pipeline{
    agent any
    environment {
	    app="docker.test" 
    }
    stages{
        stage ('clean'){
            steps {
                sh "docker rm -f ${app}"  
            }
        }
        stage ('build') {
            steps {
                sh "docker build -t ${app} ."
            }
        }
        stage ('test') {
            steps {
                echo 'test'
	            script {
                    sh "docker run -d --restart unless-stopped -p 8081:80 --name=${app} -v ${WORKSPACE}:/app/tests ${app}"
		            sh "docker exec ${app} pip install -r /app/tests/app/requirements-tests.txt"
                    sh "docker exec ${app} /app/tests/tests" 
                    sh "docker rm -f ${app}"
	            }
            }        
        }
        stage ('deploy') {
            steps {
		        script {
                    echo 'deploy'
		            sh "docker run -d --restart unless-stopped -p 8081:80 --name=${app} ${app}"
                    //Test deployment
                    sh "docker run -p 8082:80 curlimages/curl:8.3.0 curl 172.31.34.81:8081"
		        }
            }
        }
    }
}
