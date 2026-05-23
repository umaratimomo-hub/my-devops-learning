variable "instance_type" {
  type    = string
  default = "t3.micro"
}

locals {
  instance_ami = "ami-091138d0f0d41ff90"
}

output "instance_id" {
  description = "The ID of the EC2 instance"
  value = aws_instance.this.id
}