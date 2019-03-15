node {
stage ('SCM checkout'){
git 'https://github.com/bnr242003/terraform-chef'
     }
stage('connect to Chef client to run chef code'){
 sshagent(['ec2-user-Biswa-reantest']){
    sh 'ssh -v -o StrictHostKeyChecking=no ec2-user@3.80.159.110 sudo /opt/chefdk/bin/chef-client --local-mode --override-runlist recipe[testcookbook1]'
}
  }
    }
