resource "aws_security_group" "ec2" {
  name        = "all"
  description = "Allow traffic"
  vpc_id      = aws_vpc.my-vpc.id


  ingress {
    description = "HTTP from VPC"
    from_port   = 0
    to_port     = 65535
    protocol    = "all"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = {
    Name = "all"
  }
}
