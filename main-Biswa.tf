provider "aws" {
  region     = "${var.TF_VAR_region_test}"
  shared_credentials_file = "/opt/Terraform-13/credentials"
 }

resource "aws_instance" "test_jenkins_instance"{
  ami            = "${var.TF_VAR_ami_test}"
  instance_type  = "t2.micro"
  subnet_id      = "${var.TF_VAR_subnet-id_test}"
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
