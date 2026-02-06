resource "aws_lb" "alb" {
  load_balancer_type = "application"
  subnets = [
    aws_subnet.public1.id,
    aws_subnet.public2.id
  ]
  security_groups = [aws_security_group.web_sg.id]
}
