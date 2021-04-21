resource "aws_instance" "metricbeat"{
    count           = var.inst_number
    ami             = var.inst_ami
    key_name        = var.inst_key
    instance_type   = var.inst_type
    subnet_id       = var.inst_subnet
    security_groups = var.inst_sg
    user_data       = file("start-metricbeat.sh")

    tags = {
      Name = "Instancia-metricbeat"
    }
    root_block_device {
        volume_type           = "gp2"
        volume_size           = "8"
        delete_on_termination = "true"
    }

}