variable "region_test" {
  default = "${TF_VAR_region_test}"
}

variable "subnet-id_test" {
  default = "${TF_VAR_subnet-id_test}"
}

variable "ami_test" {
  default = "${TF_VAR_ami_test=ami}"
}
