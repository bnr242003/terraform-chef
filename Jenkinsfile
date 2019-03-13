node {
stage ('create new EC2 instances using Terraform')
  {
def trhome = tool name: 'terraform13', type: 'org.jenkinsci.plugins.terraform.TerraformInstallation' 
    sh "cd ${trhome}/terraform init -input=false \n"
    sh "${trhome}/terraform apply -input=false -auto-approve "
  }
  
}
