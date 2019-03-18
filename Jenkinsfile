node {

 properties([parameters([string(defaultValue: 'us-east-4', description: 'The AWS region to use', name: 'REGION', trim: true), 
                        string(defaultValue: 'subnet-991258fc', description: 'The subnet id to use', name: 'SUBNET_ID', trim: false), 
                        string(defaultValue: 'ami-0080e4c5bc078760e', description: 'The ami to be used', name: 'AMI', trim: false)])])  
withEnv(['myshell=/usr/bin']) {
 sh ' export TF_VAR_region_test = $REGION; export TF_VAR_region_subnet-id_test = $SUBNET_ID; export TF_VAR_ami_test=$AMI'
}
 stage('Value of parameters'){
     sh "echo sh REGION is ${REGION}"
     sh "echo sh  SUBNET_ID is ${SUBNET_ID}"
     sh "echo sh AMI is ${AMI}"
       }
stage('SCM Checkout'){
     git 'https://github.com/bnr242003/terraform-chef'
   }
stage ('create new EC2 instances using Terraform')
  {
def trhome = tool name: 'terraform-13', type: 'org.jenkinsci.plugins.terraform.TerraformInstallation' 
    sh "${trhome}/terraform init -input=false "
   sh "${trhome}/terraform apply -input=false -auto-approve"
  }
stage ('publishing the public IP')
  {
sh "cat /tmp/public_ip.txt"
 }
}
