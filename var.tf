variable "region_test" {
  region_test = "${$BUILD_REGION}"
}

variable "subnet-id_test" {
  subnet-id_test = "${$BUILD_SUBNET_ID}"
}

variable "ami_test" {
  ami_test = "${$BUILD_AMI}"
}
