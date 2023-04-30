resource "aws_instance" "web"{
    ami = "ami-07e17b58812e0c7c2" # AMI ID will be different for every region
    instance_type = "t3.micro"
}