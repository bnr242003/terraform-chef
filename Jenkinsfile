node {
stage ('create new EC2 instances using Terraform')
  {
def trhome = tool name: 'terraform13', type: 'org.jenkinsci.plugins.terraform.TerraformInstallation' 
    sh "${trhome}/terraform init -input=false"
    sh "pwd"
    //sh "${trhome}/terraform apply -input=false -auto-approve \n"
  }
  
}
