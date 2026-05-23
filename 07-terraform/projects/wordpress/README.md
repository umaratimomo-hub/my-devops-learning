# Deployment of WordPress Using Terraform

## Objective

Use Terraform to deploy a full WordPress stack on AWS.


## My setup included:

An EC2 instance running WordPress

provider.tf containing AWS provider

embedded user-data script to install dependencies

main.tf with Security groups resource, EC2 resource and required settings

data.tf for up-to-date ami settings

variables.tf for inputs

outputs.tf for instance details

All resources provisioned via Terraform

A working public endpoint that proves a successful WordPress installation

This assignment shows how Terraform manages real infrastructure end-to-end.


## Key take-aways 

I learnt a great deal about terraform and its benefits from this project ranging from the importance of Infrastructure as Code (IaC) to the best practices in structuring the terraform code base. Terraform enables cloud infrastructure to be codified and therefore giving the ability for cloud infrastructure to be provisioned uniformally and in a consistent manner as and when needed. It prevents the need for clicking around on the console and manually creating infrastructure which is often time conusmimg and can lead to serious problems when only a few enginneers are privvy to the infrastructure configuration in a clickOps fashion. 






