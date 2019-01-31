pipeline {
   stages {
     stage('Checkout Terraform code') {
       steps {
         git 'https://github.com/Tech-Overlord/terraform-docker-ghostblog.git'
       }
     }
     stage('Terraform version') {
       steps {
          sh 'terraform -version'
          sh 'pwd'
       }
     }
     stage('Terraform Plan') {
       steps {
          sh 'terraform plan -var "env=prod"'
       }
     }
     stage('Terraform Apply') {
       steps {
         input 'Does the plan look good to go?'
         milestone(1)
         sh 'echo "Proceeding now!"'
       }
     }
   }
}
