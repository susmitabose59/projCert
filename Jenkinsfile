pipeline {
  agent any 
  
  stages {
    stage ("stage1 Docker Build") {
      steps {
        docker image build susmitabose59/Applebite
      }
    }
    
    stage ("stage2-compile") {
      steps {
        echo 'New Stage'
      }
    }
  }
}
  
