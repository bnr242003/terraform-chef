node {
stage ('SCM checkout'){
git 'https://github.com/bnr242003/terraform-chef'
     }
stage('Connect to Chef client and then run chef code'){
 sshagent(['ec2-user-Biswa-reantest']){
  sh 'scp -r -v -o StrictHostKeyChecking=no /var/lib/jenkins/workspace/chef-pipeline/testcookbook ec2-user@3.80.159.110:/home/ec2-user/cookbooks/.'
  sh 'ssh -v -o StrictHostKeyChecking=no ec2-user@3.80.159.110 sudo /opt/chefdk/bin/chef-client --local-mode --override-runlist recipe[testcookbook]'
}
  }
    }
