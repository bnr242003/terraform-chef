node {
stage('SCM Checkout'){
     git 'https://github.com/bnr242003/terraform-chef'
   }
stage ('create new EC2 instances using Terraform')
  {
def trhome = tool name: 'terraform13', type: 'org.jenkinsci.plugins.terraform.TerraformInstallation' 
    sh "${trhome}/terraform apply -input=false -auto-approve "
  }
stage ('publishing the public IP')
  {
def public_ip = sh "cat /tmp/public_ip.txt "
       sh " echo ${public_ip} "
  }
}
