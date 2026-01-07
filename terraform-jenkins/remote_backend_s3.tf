terraform {
  backend "s3" {
    bucket = "dev-proj-jenkins-remote-state-bucket-thathsara"
    key    = "devops-project-1/jenkins/terraform.tfstate"
    region = "eu-west-1"
  }
}
