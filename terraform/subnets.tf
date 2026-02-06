resource "aws_subnet" "public1" {
  vpc_id = aws_vpc.streamline.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "public2" {
  vpc_id = aws_vpc.streamline.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "private1" {
  vpc_id = aws_vpc.streamline.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "us-east-1a"
}

resource "aws_subnet" "private2" {
  vpc_id = aws_vpc.streamline.id
  cidr_block = "10.0.4.0/24"
  availability_zone = "us-east-1b"
}
