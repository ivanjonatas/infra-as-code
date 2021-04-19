module "instance" {
    source = "./ec2"
    inst_ami = "ami-0085dc227ee4a1ab8"
    inst_type = "t2.medium"
    inst_subnet = "subnet-f5ed6793"
    inst_sg = ["sg-d9a130d1"]
    inst_key = "stack-elk"
}