
# variable "public_subnet_cidr"{ # declaring name
#     type = string # declaring type
#     #default = "10.0.1.0/16" # if you don't default terraform will ask us at runtime.
# }

variable "cidr"{
    type = string
}

variable "private_subnet_cidr"{
    type = string
}

variable "public_subnet_cidr"{
    type = string
}

variable "tags" {
    type = map   
}

variable "internet_cidr"{
    type = string
}

variable "internet" {
    type = bool
}

variable "lb_type" {
    type = string
}

variable "subnet_ids"{
    type = list
}

variable "security_groups"{
    type = list
}

variable "timeout"{
    type = number
}



