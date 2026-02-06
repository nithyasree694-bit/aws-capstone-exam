resource "aws_db_subnet_group" "this" {
  name       = "${var.project_name}-db-subnet-group"
  subnet_ids = [aws_subnet.private[0].id, aws_subnet.private[1].id]
  tags       = { Name = "${var.project_name}-db-subnet-group" }
}

resource "aws_db_instance" "mysql" {
  identifier              = "${var.project_name}-mysql"
  engine                  = "mysql"
  engine_version          = "8.0"
  instance_class          = "db.t3.micro"   # Free Tier eligible
  allocated_storage       = 20
  storage_type            = "gp2"

  username                = var.db_username
  password                = var.db_password
  db_subnet_group_name    = aws_db_subnet_group.this.name
  vpc_security_group_ids  = [aws_security_group.rds_sg.id]
  multi_az                = false
  publicly_accessible     = false
  backup_retention_period = 0
  skip_final_snapshot     = true

  deletion_protection     = false

  tags = { Name = "${var.project_name}-rds" }
}
