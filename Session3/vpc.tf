
resource "aws_subnet" "public" {
    vpc_id = aws_vpc.main.id # it will fetch VPC ID created from below.
    cidr_block = var.public_subnet_cidr 

    tags = merge(var.tags, {
      Name = "public-subnet"
    })
}

resource "aws_subnet" "private" {
    vpc_id = aws_vpc.main.id # it will fetch VPC ID created from below.
    cidr_block = var.private_subnet_cidr

    tags = merge(var.tags, {
      Name = "private-subnet"
    })
}


resource "aws_vpc" "main" { # this name belongs to only terraform reference
    cidr_block = var.cidr
    instance_tenancy = "default"
    tags = merge(var.tags, {
      Name = "timing"
    })
}

resource "aws_internet_gateway" "automated-igw" {
  vpc_id = aws_vpc.main.id # Internet Gateway depends on VPC

  tags = merge(var.tags, {
    Name = "timing-igw"
  })
}

resource "aws_route_table" "public-rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = var.internet_cidr
    gateway_id = aws_internet_gateway.automated-igw.id
  }

  tags = merge(var.tags, {
      Name = "public-route-table"
  })
}
  
  
resource "aws_eip" "auto-eip" {

}


resource "aws_nat_gateway" "timing-NAT-Gateway" {
  allocation_id = aws_eip.auto-eip.id
  subnet_id     = aws_subnet.public.id #public subnet

  tags = {
    Name = "timing-NAT-Gateway"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.automated-igw]
}

resource "aws_route_table" "private-rt" { # for private route we don't attach IGW, we attach NAT Gateway.
  vpc_id = aws_vpc.main.id

  # route {
  #   cidr_block = "0.0.0.0/0"
  #   gateway_id = aws_nat_gateway.automated-NAT.id
  # }

   tags = merge(var.tags, {
      Name = "private-route-table"
  })
}

resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public-rt.id
}

resource "aws_route_table_association" "private" {
  subnet_id      = aws_subnet.private.id
  route_table_id = aws_route_table.private-rt.id
}
