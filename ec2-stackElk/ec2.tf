resource "aws_instance" "elk"{
    ami             = var.inst_ami
    key_name        = var.inst_key
    instance_type   = var.inst_type
    subnet_id       = var.inst_subnet
    private_ip      = "172.31.0.12"
    security_groups = var.inst_sg
    user_data       = file("start-metricbeat.sh")

    tags = {
      Name = "Instancia-Stack-ELK"
    }
    root_block_device {
        volume_type           = "gp2"
        volume_size           = "8"
        delete_on_termination = "true"
    }

}