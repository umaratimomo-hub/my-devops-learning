resource "aws_instance" "nginx-cloud_init" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.nginx.id]

    # Demonstration: user_data vs user_data_base64
  user_data        = var.use_user_data_base64 ? null : local.cloud_init
  user_data_base64 = var.use_user_data_base64 ? base64encode(local.cloud_init) : null
  
  tags = {
    Name = "nginx-server"
  }
}

resource "aws_security_group" "nginx" {
  name = "nginx-sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

