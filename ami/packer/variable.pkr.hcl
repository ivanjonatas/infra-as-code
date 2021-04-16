variable "ami_name" {
  type    = string
  default = "my-custom-ami"
}
variable "inst_type" {
    type    = string
    default = "t2.medium"
}

variable "inst_region" {
    type    = string
    default = "us-east-1"
}

variable "inst_username" {
    type    = string
    default = "ubuntu"
}