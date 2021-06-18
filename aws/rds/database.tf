resource "aws_db_instance" "default" {
  allocated_storage      = 10
  engine                 = "mysql"
  engine_version         = "5.7"
  identifier             = "your-db-instance"
  instance_class         = "db.t3.micro"
  name                   = "your_db"
  username               = "foo"
  password               = "foobarbaz"
  parameter_group_name   = "default.mysql5.7"
  publicly_accessible    = true
  skip_final_snapshot    = true
  vpc_security_group_ids = [aws_security_group.sg.id]
  db_subnet_group_name   = aws_db_subnet_group.default.id
}

## availability zone thing?
# rds creation takes about 5 minutes...go check on the kid or dogs
