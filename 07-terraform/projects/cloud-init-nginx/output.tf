output "instance_id" {
  description = "The ID of the EC2 instance"
  value = aws_instance.nginx-cloud_init.id
}

output "public_ip" {
  value = aws_instance.nginx-cloud_init.public_ip
}

output "nginx_url" {
  value = "http://${aws_instance.nginx-cloud_init.public_ip}"
}