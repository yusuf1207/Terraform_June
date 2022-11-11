resource "aws_security_group" "my_sg" {
  name        = replace(local.name, "rtype", "web-sg")
  description = "This is a test security group"
  vpc_id      = "vpc-033585edc6f00d9fc"
  tags = merge(local.common_tags, { Name = replace(local.name, "rtype", "web-sg") } )
}

resource "aws_security_group_rule" "ingress_ssh" {              
  type              = "ingress"                                  
  from_port         = 22 
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = [ "0.0.0.0/0" ]
  security_group_id = aws_security_group.my_sg.id                    
}

resource "aws_security_group_rule" "ingress_web" {
  type              = "ingress"                                  
  from_port         = 80 
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = [ "0.0.0.0/0" ]
  security_group_id = aws_security_group.my_sg.id                    
}

resource "aws_security_group_rule" "egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.my_sg.id
}