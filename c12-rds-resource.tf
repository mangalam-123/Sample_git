
resource "aws_db_instance" "Edf_rds" {
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "admin"
  password             = "admin123"
  vpc_security_group_ids = [ aws_security_group.rds-sg.id ]
  skip_final_snapshot  = true

}