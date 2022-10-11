resource "aws_db_instance" "default" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  db_name              = "wordpress"    # Name of my database, not a RDS name
  username             = "admin"
  password             = random_password.db_password.result
  identifier           = "${var.env}-rds-instance"    //format(%s-rds-instance, var.env)             # NAME of your RDS instance, not a database
  publicly_accessible  = 
  skip_final_snapshot  = 
  final_snapshot_identifier = 
}

// dev-rds-instance