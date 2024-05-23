pipeline {
    agent any 
    stages {
        stage('Deploy') { 
            steps {
	   
                sh 'docker build -t sureshimage2 .'
		sh 'docker container run -itd --name mycontainer sureshimage2:latest'
            }
        }
    }
}
