module "elk" {
    source              = "./ec2-stackElk"
    inst_ami            = "ami-xxxxxxxxx"
    inst_type           = "t2.medium"
    inst_subnet         = "subnet-xxxxxxxx"
    inst_sg             = ["sg-xxxxxx"]
    inst_key            = "stack-elk"
}

module "metricbeat" {
    inst_number         = 3
    source              = "./ec2-metricbeat"
    inst_ami            = "ami-04d48dbd512190d53"
    inst_type           = "t2.medium"
    inst_subnet         = "subnet-xxxxxxxx"
    inst_sg             = ["sg-xxxxxx"]
    inst_key            = "stack-elk"
}