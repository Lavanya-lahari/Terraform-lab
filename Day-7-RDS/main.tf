resource "aws_db_instance" "default" {
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  username             = "admin"
  password             = "admin123"
  parameter_group_name = "default.mysql8.0"
  db_subnet_group_name = aws_db_subnet_group.sub-grp.id
  skip_final_snapshot  = true
  multi_az = true
 
}


resource "aws_db_subnet_group" "sub-grp" {
  name       = "my subnet"
  subnet_ids = ["subnet-0e9d79a004e6c97cc", "subnet-0147f4612fedcce73"]

  tags = {
    Name = "My DB subnet group"
  }
}

 