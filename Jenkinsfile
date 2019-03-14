node {
stage ('SCM checkout'){
git 'https://github.com/bnr242003/terraform-chef'
                      }
stage ('Compile-Package'){
def mvnHome = tool name: 'maven-3', type: 'maven'
sh "${mvnHome}/bin/mvn package"
                       }
stage('Deploy to Tomcat'){
 sshagent(['78c50528-d4bd-4932-a48c-50b7f57cd319']) {
    sh 'scp -o StrictHostKeyChecking=no target/*.war ec2-user@54.173.237.210:/tmp/test'
}
  }
    }
