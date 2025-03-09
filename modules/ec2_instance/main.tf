
resource "aws_vpc" "analytics_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "analytics-vpc"
  }
}

resource "aws_subnet" "analytics_subnet" {
  vpc_id = aws_vpc.analytics_vpc.id
  cidr_block = var.subnet_cidr_block
}

resource "aws_security_group" "analytics_sg" {
  name_prefix = var.sg_name_prefix
  vpc_id      = aws_vpc.analytics_vpc.id
}

resource "aws_instance" "analytics_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = aws_subnet.analytics_subnet.id
  vpc_security_group_ids = [aws_security_group.analytics_sg.id]

  tags = {
    Name = var.instance_name
  }
}

