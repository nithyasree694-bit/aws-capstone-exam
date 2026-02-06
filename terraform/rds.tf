resource "aws_db_subnet_group" "db_subnet" {
  subnet_ids = [
    aws_subnet.private1.id,
    aws_subnet.private2.id
  ]
}

resource "aws_db_instance" "mysql" {
  allocated_storage = 20
  engine = "mysql"
  instance_class = "db.t3.micro"
  username = "admin"
  password = "password123"
  skip_final_snapshot = true
  db_subnet_group_name = aws_db_subnet_group.db_subnet.name
}
