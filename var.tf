variable "region_test" {
  region_test = "${TF_VAR_region_test}"
}

variable "subnet-id_test" {
  subnet-id_test = "${TF_VAR_subnet-id_test}"
}

variable "ami_test" {
  ami_test = "${TF_VAR_ami_test=ami}"
}
