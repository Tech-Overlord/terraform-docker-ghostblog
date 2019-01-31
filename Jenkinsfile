pipeline {
   stages {
     stage('Checkout Terraform code') {
       git 'https://github.com/Tech-Overlord/terraform-docker-ghostblog.git'
     }
     stage('Terraform version') {
       sh 'terraform -version'
       sh 'pwd'
     }
     stage('Terraform Plan') {
       sh 'terraform plan -var "env=prod"'
     }
     stage('Terraform Apply') {
       input 'Does the plan look good to go?'
       milestone(1)
       sh 'echo "Proceeding now!"'
     }
   }
}
