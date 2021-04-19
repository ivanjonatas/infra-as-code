module "instance" {
    source = "./ec2"
    inst_ami = "ami-07b200e1d15856de9"
    inst_type = "t2.medium"
    inst_subnet = "subnet-f5ed6793"
    inst_sg = ["sg-d9a130d1"]
    inst_key = "k8s"
}