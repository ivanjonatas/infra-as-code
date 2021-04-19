source "amazon-ebs" "ami_elk" {
  ami_name      = "ami_stack_elk ${local.timestamp}"
  instance_type = "${var.inst_type}"
  region        = "${var.inst_region}"
  source_ami_filter {
    filters = {
      name                = "ubuntu/images/*ubuntu-bionic-18.04-amd64-server-*"
      root-device-type    = "ebs"
      virtualization-type = "hvm"
    }
    most_recent = true
    owners      = ["099720109477"]
  }
  ssh_username = "${var.inst_username}"
}