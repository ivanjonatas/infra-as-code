module "instance-elk" {
    source = "./ec2-stackElk"
    inst_ami = "ami-06c37b797f623c298"
    inst_type = "t2.medium"
    inst_subnet = "subnet-f5ed6793"
    inst_sg = ["sg-d9a130d1"]
    inst_key = "stack-elk"
}

module "instance-metricbeat" {
    source = "./ec2-metricbeat"
    inst_ami = "ami-04d48dbd512190d53"
    inst_type = "t2.medium"
    inst_subnet = "subnet-f5ed6793"
    inst_sg = ["sg-d9a130d1"]
    inst_key = "stack-elk"
}