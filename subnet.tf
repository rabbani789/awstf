resource "aws_subnet" "mypublicsub-1" {
  vpc_id     = aws_vpc.demovpc.id
  cidr_block = "10.0.192.0/20"
  map_public_ip_on_launch = true
  availability_zone = "ap-south-1a"
  tags = {
    Name = " My Public Subnet -1"
  }
}

resource "aws_subnet" "mypublicsub-2" {
  vpc_id     = aws_vpc.demovpc.id
  cidr_block = "10.0.64.0/19"
  map_public_ip_on_launch = true
  availability_zone = "ap-south-1b"
  tags = {
    Name = " My Public Subnet -2"
  }
}
