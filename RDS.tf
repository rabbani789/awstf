resource "aws_db_instance" "db_server" {
  allocated_storage    = 5
  db_name              = "db_555"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  multi_az             = true
  username             = "rabbani"
  password             = "Rabbu7896"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}
