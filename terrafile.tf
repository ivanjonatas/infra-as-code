module "group" {
    source = "./security"
}

module "instance" {
    source = "./ec2"
    # inst_sg = module.group.id_sg
    inst_ami = "ami-06811e965f658e79b"
    inst_key = "k8s"
}