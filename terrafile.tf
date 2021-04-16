module "group" {
    source = "./security"
}

module "instance" {
    source = "./ec2"
    # inst_sg = module.group.id_sg
    inst_ami = "ami-0be5fa50a0e832128"
    inst_key = "k8s"
}