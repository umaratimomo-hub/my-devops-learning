resource "aws_instance" "wordpress" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.wordpress.id]
  
  user_data = <<-EOF
              #!/bin/bash

              # Update system
              sudo apt update -y

              # Install Apache
              sudo apt install -y apache2

              # Start and enable Apache
              sudo systemctl start apache2
              sudo systemctl enable apache2

              # Enable and install PHP 8
              sudo amazon-linux-extras enable php8.0
              sudo apt clean metadata
              sudo apt install -y php php-mysqlnd

              # Install MariaDB
              sudo apt install -y mariadb-server

              # Start and enable MariaDB
              sudo systemctl start mariadb
              sudo systemctl enable mariadb

              # Clean web root
              sudo rm -rf /var/www/html/*

              # Go to web root
              cd /var/www/html

              # Download WordPress
              sudo wget https://wordpress.org/latest.tar.gz

              # Extract WordPress
              sudo tar -xzf latest.tar.gz

              # Copy WordPress files
              sudo cp -r wordpress/* /var/www/html/

              # Set permissions
              sudo chown -R www-data:www-data /var/www/html
              sudo chmod -R 755 /var/www/html

              # Restart Apache
              sudo systemctl restart httpd
              EOF

  tags = {
    Name = "wordpress-server"
  }
}

resource "aws_security_group" "wordpress" {
  name = "wordpress-sg"

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