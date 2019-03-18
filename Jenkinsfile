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
    sh "echo ${REGION} >> /tmp/region.txt"
     sh "echo ${SUBNET_ID} >> /tmp/subnet.txt"
     sh "echo ${AMI} >> /tmp/ami.txt"
   }
stage('SCM Checkout'){
     git 'https://github.com/bnr242003/terraform-chef'
   }
stage ('create new EC2 instances using Terraform')
  {
def trhome = tool name: 'terraform-13', type: 'org.jenkinsci.plugins.terraform.TerraformInstallation' 
    sh "${trhome}/terraform init -input=false "
   sh "${trhome}/terraform apply -input=false -auto-approve -var="region_test= sh "cat region.txt" " -var="subnet-id_test= sh "cat subnet.txt" " -var="ami_test="cat .ami.txt"""
  }
stage ('publishing the public IP')
  {
sh "cat /tmp/public_ip.txt"
 }
}
