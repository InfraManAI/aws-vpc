variable "vpc_primary_cidr_block"{
    type = string
    default = "10.0.1.0/16"    
}
variable "vpc_instance_tenancy"{
    type = string
    default = "default"
}
varible "vpc_enable_dns_support"{
    type = bool
    default = true
}
variable "vpc_enable_dns_hostnames"{
    type = bool
    default = true
}
variable "vpc_enable_classiclink"{
    type = bool
    default = null
}
variable "vpc_enable_classiclink_dns_support"{
    type = bool
    default = null
}
variable "vpc_assign_generated_ipv6_cidr_block"{
    type = bool
    default = false
}
variable "vpc_tags"{
    type = map(string)
}
variable "vpc_secondary_cidr_block"{
    type = list(string)   
    default = []
}

