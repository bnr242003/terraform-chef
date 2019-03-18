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
def trhome = tool name: 'terraform-13', type: 'org.jenkinsci.plugins.terraform.TerraformInstallation' 
    sh "${trhome}/terraform init -input=false "
   def region_test = "${REGION}";
   def subnet-id_test = "${SUBNET_ID}";
   def ami_test = "${AMI}"
   /*sh " set region_test = $REGION; set subnet-id_test = $SUBNET_ID; set ami_test=$AMI" */
   sh "${trhome}/terraform apply -input=false -auto-approve -var region_test="region_test" \
   -var subnet-id_test="subnet-id_test" \
   -var ami_test="ami_test""
  }
}
