resource "aws_vpc" "streamline" {
  cidr_block = "10.0.0.0/16"
  tags = { Name = "streamline-vpc" }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.streamline.id
}
