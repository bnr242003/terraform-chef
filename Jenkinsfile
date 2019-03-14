node {
stage('SCM Checkout'){
     git 'https://github.com/bnr242003/terraform-chef'
   }
stage ('create new EC2 instances using Terraform')
  {
def trhome = tool name: 'terraform13', type: 'org.jenkinsci.plugins.terraform.TerraformInstallation' 
    sh "${trhome}/terraform init -input=false "
    sh "${trhome}/terraform apply -input=false -auto-approve "
  }
stage ('publishing the public IP')
  {
def publicip = sh label: '', script: 'cat /tmp/public_ip.txt'
       sh "echo ${public_ip}"
  }
}
