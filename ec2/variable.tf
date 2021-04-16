variable "inst_key"{
    description = "informação do id da vpc"
    type = string
}


variable "inst_ami"{
    description = "informação do id da vpc"
    type = string
}


variable "inst_type"{
    description = "informação do id da vpc"
    type = string
    default = "t2.medium"
}

variable "inst_subnet"{
    description = "informação do id da vpc"
    type = string
    default = "subnet-f5ed6793"
}

variable "inst_sg" {
    description = "informação do id da vpc"
    type = list(any)
    default = ["sg-d9a130d1"]
}
