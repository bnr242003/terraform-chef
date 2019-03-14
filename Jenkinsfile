node {
stage ('SCM checkout'){
git 'https://github.com/bnr242003/terraform-chef'
                      }
stage ('Compile-Package'){
def mvnHome = tool name: 'maven-3', type: 'maven'
sh "${mvnHome}/bin/mvn package"
                       }
stage('Deploy to Tomcat'){
  sshagent(['ec2-user-sshagent']) {
    sh 'scp -o StrictHostKeyChecking=no target/*.war ec2-user@10.0.2.180:/tmp/test'
}
  }
    }
