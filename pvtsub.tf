resource "aws_subnet" "myprivatesub-1" {
  vpc_id     = aws_vpc.demovpc.id
  cidr_block = "10.0.96.0/19"
  map_public_ip_on_launch = true
  availability_zone = "ap-south-1a"
  tags = {
    Name = " My private Subnet -1"
  }
}

resource "aws_subnet" "myprivatesub-2" {
  vpc_id     = aws_vpc.demovpc.id
  cidr_block = "10.0.128.0/18"
  map_public_ip_on_launch = true
  availability_zone = "ap-south-1b"
  tags = {
    Name = " My private Subnet -2"
  }
}
