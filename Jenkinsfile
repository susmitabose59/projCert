pipeline {
  agent any 
  
  stages {
    stage ("stage1-checkout") {
      steps {
        git 'git@github.com:susmitabose59/projCert.git'
      }
    }
    
    stage ("stage2-compile") {
      steps {
        echo 'New Stage'
      }
    }
  }
}
  
