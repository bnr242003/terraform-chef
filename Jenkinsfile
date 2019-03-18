node {

 properties([parameters([string(defaultValue: 'us-east-4', description: 'The AWS region to use', name: 'REGION', trim: true), 
                        string(defaultValue: 'subnet-991258fc', description: 'The subnet id to use', name: 'SUBNET_ID', trim: false), 
                        string(defaultValue: 'ami-0080e4c5bc078760e', description: 'The ami to be used', name: 'AMI', trim: false)])])  
/*environment {
 AWS_REGION = "${params.REGION}"
 SUBNET_ID = "${params.SUBNET_ID}"
 AMI = "${params.AMI}"
  } */
 stage('Value of parameters'){
     sh "echo sh REGION is ${REGION}"
     sh "echo sh  SUBNET_ID is ${SUBNET_ID}"
     sh "echo sh AMI is ${AMI}"
    /* sh "export TF_VAR_region_test = ${REGION}"
     sh "export TF_VAR_subnet-id_test = ${SUBNET_ID}"
     sh "export TF_VAR_ami_test = ${AMI}" */
   }
stage('SCM Checkout'){
     git 'https://github.com/bnr242003/terraform-chef'
   }
stage ('create new EC2 instances using Terraform')
  {
def trhome = tool name: 'terraform-13', type: 'org.jenkinsci.plugins.terraform.TerraformInstallation' 
    sh "${trhome}/terraform init -input=false "
   sh "${trhome}/terraform apply -input=false -auto-approve -var="region_test=${REGION}" -var="subnet-id_test=${SUBNET_ID}" -var="ami_test=${AMI}""
  }
stage ('publishing the public IP')
  {
sh "cat /tmp/public_ip.txt"
 }
}
