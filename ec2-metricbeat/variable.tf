variable "inst_key"{
    type = string
}

variable "inst_ami"{
    type = string
}

variable "inst_type"{
    type = string
}

variable "inst_subnet"{
    type = string
}

variable "inst_sg" {
    type = list(any)
}

variable "inst_number" {
    type = number
}
