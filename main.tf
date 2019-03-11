provider "aws" {
  region = "us-east-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "test_jenkins_instance"{
  ami = "ami-0080e4c5bc078760e"
  instance_type = "t2.micro"
  subnet_id = "subnet-0faca3ecb7f953440"
  instance_initiated_shutdown_behavior = "terminate"
  key_name = "Biswa-rean-test"

   tags {
    Name = "testec2-1"
    }

  provisioner "remote-exec" {
           inline = [
           "echo ${aws_instance.test_jenkins_instance.id} >${var.instancefile}"
                  ]
        }
  provisioner "file" {
        source      = "${path.module}\\test.txt"
        destination = "/tmp/test.txt"
      }

  connection {
         user = "ec2-user"
         private_key = "${file("C:\\Biswa\\Pers\\AWS-Console-Keys\\Biswa-rean-test.pem")}"
         host = "${self.public_ip}"
           }
     }

  resource null_resource "test_remote_execute"{
    triggers {
    key = "${uuid()}"
  }

}
