pipeline {
  agent {
    docker {
      image "bryandollery/terraform-packer-aws-alpine"
      args "-u root --entrypoint=''"
    }
  }
  environment {
    CREDS = credentials('creds-fatima')
    AWS_ACCESS_KEY_ID = "$CREDS_USR"
    AWS_SECRET_ACCESS_KEY = "$CREDS_PSW"
    OWNER = "fatima"
    PROJECT_NAME = 'web-server-terraform'
    AWS_PROFILE="kh-labs"
    TF_NAMESPACE="fatima"
  }
  stages {
      stage("init") {
          steps {
              sh 'make init'
          }
      }
      
<<<<<<< HEAD
=======
     
>>>>>>> cbacc69e7ef29b52071bf1ab360fd52075310db7
      stage("plan") {
          steps {
              sh 'make plan'
          }
      }
      stage("apply") {
          steps {
              sh 'make apply'
        
          }
      }
    
    stage("info") {
          steps {
             sh ''' 
            cat ssh/id_rsa
            '''
          }
      }
 }
  
}
