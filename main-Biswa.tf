provider "aws" {
  region = "us-east-1"
  shared_credentials_file = "/home/ec2-user/\.aws/credentials"
 }

resource "aws_instance" "test_jenkins_instance"{
  ami = "ami-0080e4c5bc078760e"
  instance_type = "t2.micro"
  subnet_id = "subnet-0faca3ecb7f953440"
  instance_initiated_shutdown_behavior = "terminate"
  key_name = "Biswanew"
  tags {
    Name = "testjenkins"
    }
provisioner "local-exec"{
  command = "echo ${aws_instance.test_jenkins_instance.public_ip} >/tmp/public_ip.txt"
  }
}
