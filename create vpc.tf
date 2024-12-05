#vpc 
resource "aws_vpc" "terraform_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "vpc_T"
  }
}

#subnet 
resource "aws_subnet" "web_subnet" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "Main"
  }
}

#api subnet 
resource "aws_subnet" "api_subnet" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = "10.0.2.0/24"
  map_public_ip_on_launch = "true"


  tags = {
    Name = "Main"
  }
}

#DB subnet
resource "aws_subnet" "dbsubnet" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = "10.0.3.0/24"
  map_public_ip_on_launch = "false"


  tags = {
    Name = "Main"
  }
}
