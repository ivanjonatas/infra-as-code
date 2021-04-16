resource "aws_security_group" "sg-terraform" {
  name        = "module-terraform"
  description = "SG criado pelo terraform"
  vpc_id      = var.aws_vpc_id

   // portas de entrada
   ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }  

  // portas de saida
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "sg-terraform"
  }
}