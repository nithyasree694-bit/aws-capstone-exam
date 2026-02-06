resource "aws_instance" "web" {
  count = 2
  ami = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"
  subnet_id = element([
    aws_subnet.public1.id,
    aws_subnet.public2.id
  ], count.index)

  vpc_security_group_ids = [aws_security_group.web_sg.id]
  key_name = "YOUR_KEY"

  tags = { Name = "web-${count.index}" }
}
