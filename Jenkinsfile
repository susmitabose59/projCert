pipeline {
  agent any 
  
  stages {
    stage ("Stage 1: Docker Build") {
      steps {
        sh 'sudo docker build -t susmitabose59/applebite .'
      }
    }
    
    stage ("Stage 2: Docker Run") {
      steps {
        sh '''
          sudo docker rm -f AppleBite || true
          sudo docker run -dit --name AppleBite -p 9080:8080 susmitabose59/applebite
        '''
      }
    }
    
    stage ("Stage 3: Docker Deploy") {
      steps {
        sh 'sudo docker push susmitabose59/applebite'
      }
    }
  }
  
  post {
    success {
      sh 'echo "JOB SUCCEEDED!!"'
      //mail to:"susmitabose59@gmail.com", subject:"SUCCESS: ${currentBuild.fullDisplayName}", body: "Job has passed."
    }
    
    failure {
      sh 'echo "JOB FAILED!!"'
      //mail to:"susmitabose59@gmail.com", subject:"FAILED: ${currentBuild.fullDisplayName}", body: "Job has failed."
    }
  }
}
  
