node {

 properties([parameters([string(defaultValue: 'us-east-4', description: 'The AWS region to use', name: 'REGION', trim: true),
                        string(defaultValue: 'subnet-991258fc', description: 'The subnet id to use', name: 'SUBNET_ID', trim: false),
                        string(defaultValue: 'ami-0080e4c5bc078760e', description: 'The ami to be used', name: 'AMI', trim: false)])])

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
     sh "echo region_test = ' " ${REGION} "' >> /var/lib/jenkins/workspace/Terraform-pipeline/terraform.tfvars"
     sh "echo subnet-id_test = '"${SUBNET_ID} "' >> /var/lib/jenkins/workspace/Terraform-pipeline/terraform.tfvars"
     sh "echo ami_test = '"${AMI} " '>> /var/lib/jenkins/workspace/Terraform-pipeline/terraform.tfvars"
     def trhome = tool name: 'terraform-13', type: 'org.jenkinsci.plugins.terraform.TerraformInstallation'
     sh "${trhome}/terraform init -input=false "
     sh " pwd"
     sh "${trhome}/terraform apply -input=false -auto-approve   "
  }
}
