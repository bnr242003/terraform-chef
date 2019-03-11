node {
stage (SCM checkout){
git 'https://github.com/bnr242003/terraform-chef'
                      }
stage (Compile-Package){
def mvnHome = tool name: 'maven-3', type: 'maven'
sh "${mvnHome}/bin/mvn package
                       }

    }
