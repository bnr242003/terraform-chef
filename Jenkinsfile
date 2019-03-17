node {
parameters {
  string(name: 'REGION', defaultValue: 'us-east-1', description: 'The AWS region to use')
  string(name: 'SUBNET_ID', defaultValue: 'subnet-991258fc', description: 'The subnet id to use')
  string(name: 'SECURITY_GROUP_ID', defaultValue: 'sg-0a236475', description: 'The security group to attach to the launched instance')
  string(name: 'AMI', defaultValue: 'ami-0080e4c5bc078760e', description: 'The ami to be used for the instance')
  
}
environment {
 AWS_REGION = "${params.REGION}"
 SUBNET_ID = "${params.SUBNET_ID}"
 SG_ID = "${params.SECURITY_GROUP_ID}"
 AMI = "${params.AMI}"
 }     
stage('SCM Checkout'){
     git 'https://github.com/bnr242003/terraform-chef'
   }
stage ('create new EC2 instances using Terraform')
  {
def trhome = tool name: 'terraform-13', type: 'org.jenkinsci.plugins.terraform.TerraformInstallation' 
    sh "${trhome}/terraform init -input=false "
    sh "${trhome}/terraform apply -input=false -auto-approve -var-file="terraform.tfvars""
  }
stage ('publishing the public IP')
  {
sh "cat /tmp/public_ip.txt"
 }
}
