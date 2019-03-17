provider "aws" {
  region     = "${var.region-aws}"
  shared_credentials_file = "/opt/Terraform-13/credentials"
 }

resource "aws_instance" "test_jenkins_instance"{
  ami            = "${var.ami-aws}"
  instance_type  = "t2.micro"
  subnet_id      = "${var.subnet-id-aws}"
  instance_initiated_shutdown_behavior = "terminate"
  key_name = "Biswanew"
  tags {
    Name = "testjenkins"
    }
/* provisioner "local-exec"{
  command = "echo ${aws_instance.test_jenkins_instance.public_ip} >/tmp/public_ip.txt"
  }  */
}

output "address" {
value = "${aws_instance.test_jenkins_instance.public_ip}"
}
