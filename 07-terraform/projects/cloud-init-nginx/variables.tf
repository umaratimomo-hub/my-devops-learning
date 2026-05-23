variable "instance_type" {
  type    = string
  #default = "t3.micro"
}

variable "use_user_data_base64" {
  type        = bool
  description = "If true, Terraform uses user_data_base64; otherwise uses user_data"
  default     = false
}

locals {
  cloud_init = file("${path.module}/cloud-init.yaml")
}