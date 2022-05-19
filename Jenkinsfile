pipeline {
  agent any 
  
  stages {
    stage ("stage1 Docker Build") {
      steps {
        sh 'sudo docker build -t susmitabose59/Applebite .'
      }
    }
    
    stage ("stage2-compile") {
      steps {
        echo 'New Stage'
      }
    }
  }
}
  
