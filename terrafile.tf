module "group" {
    source = "./security"
}

module "instance" {
    source = "./ec2"
    # inst_sg = module.group.id_sg
    inst_ami = "ami-0284e82bd57b42967"
    inst_key = "k8s"
}