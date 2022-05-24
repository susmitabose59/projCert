pipeline {
  agent any 
  
  stages {
    stage ("stage1 Docker Build") {
      steps {
        sh 'sudo docker build -t susmitabose59/applebite .'
      }
    }
    
    stage ("stage2-Docker Run") {
      steps {
        sh 'sudo docker run -dit --name AppleBite -p 9080:8080 susmitabose59/applebite'
      }
    }
  }
}
  
