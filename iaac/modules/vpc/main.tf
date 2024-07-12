#Vpc

resource "aws_vpc" "my-vpc" {
  cidr_block       = var.vpc-cidr
  instance_tenancy = "default"
  tags = {
    Name = "my-vpc"
  }
}

#Subnets

resource "aws_subnet" "subnets" {
  count                   = length(var.subnet-cidrs)
  vpc_id                  = aws_vpc.my-vpc.id
  cidr_block              = var.subnet-cidrs[count.index]
  availability_zone       = data.aws_availability_zones.available.names[count.index]
  map_public_ip_on_launch = true
  tags = {
    Name = var.subnet-names[count.index]
  }
}


#IG
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.my-vpc.id

  tags = {
    Name = "My Internet Gateway"
  }
}



#RT

resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.my-vpc.id

  route {
    cidr_block = "0.0.0.0/0" #PUBLIC SUBNET
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "My-RT"
  }
}


#RTA

resource "aws_route_table_association" "rta" {
  count          = length(var.subnet-cidrs)
  subnet_id      = aws_subnet.subnets[count.index].id
  route_table_id = aws_route_table.rt.id
}
