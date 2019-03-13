node {
stage ('create new EC2 instances using Terraform')
  {
def trhome = tool name: 'terraform13', type: 'org.jenkinsci.plugins.terraform.TerraformInstallation'   
    sh "${trhome}/terraform apply -auto-approve --terraform-source-update"
  }
  
}
