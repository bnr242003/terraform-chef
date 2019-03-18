variable "region_test" {
  default = "${$BUILD_REGION}"
}

variable "subnet-id_test" {
  default = "${$BUILD_SUBNET_ID}"
}

variable "ami_test" {
  default = "${$BUILD_AMI}"
}
