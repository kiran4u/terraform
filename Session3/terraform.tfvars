# this file is to pass the default values
cidr = "10.0.0.0/16"
public_subnet_cidr = "10.0.1.0/24"
private_subnet_cidr = "10.0.2.0/24"
tags = {
    Name = "timing"
    Environment = "DEV"
    terraform = "true"
}
internet_cidr = "0.0.0.0/0"
internet = true
lb_type = "application"
subnet_ids = ["subnet-0ed95555f36f6be6b", "subnet-0deb92a5787ac2d76"]
security_groups = ["sg-040a0e83c98fd6092"]
timeout = 60
