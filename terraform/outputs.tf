output "alb_dns_name" {
  value = aws_lb.alb.dns_name
}

output "web_public_ips" {
  value = [for i in aws_instance.web : i.public_ip]
}

output "web_public_dns" {
  value = [for i in aws_instance.web : i.public_dns]
}

output "rds_endpoint" {
  value = aws_db_instance.mysql.address
}
