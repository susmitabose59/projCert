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
        sh '''
          sudo docker rm -f AppleBite
          sudo docker -dit run --name AppleBite -p 9080:8080 susmitabose59/applebite
        '''
      }
    }
  }
  
  post {
    success {
      mail to:"susmitabose59@gmail.com", subject:"SUCCESS: ${currentBuild.fullDisplayName}", body: "Job has passed."
    }
    
    failure {
      mail to:"susmitabose59@gmail.com", subject:"FAILED: ${currentBuild.fullDisplayName}", body: "Job has failed."
    }
}
  
