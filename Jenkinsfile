pipeline {
    agent any 
    stages {
        stage('build somefiles') { 
            steps {
	        sh 'cd /root/; mvn install'
		sh 'cp -r /root/.m2/repository/com/mycompany/app/my-app/1/my-app-1.jar /root/'
            }
        }
        stage('Deploy') {
            steps {
                sh 'cd /root; docker build -t sureshimage2 .'
		sh 'docker container run -itd --name mybuildcontainer sureshimage2:latest'
            }
        }

    }
}
