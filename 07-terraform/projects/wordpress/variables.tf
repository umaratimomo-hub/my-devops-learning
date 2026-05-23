variable "instance_type" {
  type    = string
  #default = "t3.micro"
}

output "instance_id" {
  description = "The ID of the EC2 instance"
  value = aws_instance.wordpress.id
}
