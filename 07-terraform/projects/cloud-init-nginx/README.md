# EC2 Deployment with Cloud-Init

## Aim
Configure a cloud-init file and use Terraform to automate an EC2 deployment.
To show how Terraform uses user_data or user_data_base64
To show how cloud-init automates instance configuration
To show how to structure Terraform for clarity

## Objectives:
Write a cloud-init YAML file
Install and configure software on boot (e.g. NGINX or Apache)
Pass cloud-init to the EC2 instance through Terraform
Ensure the instance comes online fully configured with no manual steps


## My setup included:

An EC2 instance running NGINX

provider.tf containing AWS provider

cloud-init yaml file script to install dependencies

main.tf with Security groups resource, EC2 resource and required settings

data.tf for up-to-date ami settings

variables.tf for inputs

outputs.tf for instance details

terraform.tfvars for variable input values

All resources provisioned via Terraform

A working public endpoint that proves a successful WordPress installation

This assignment shows how Terraform manages real infrastructure end-to-end.


## Key take-aways 

Similar to the wordpress project, I learnt the benefits of modular structuring and the importance of using variables to achieve idempotency. In addition, I came to understand how different types of scripts (cloud-init (yaml), user-data(bash), plain text, base64)can be utilised based on terraform's conditional logic capabilities. This makes the Terraform module highly reusable. If one project team needs to pass plain text, and another team needs Base64 for a different type of infrastructure, they can use the exact same code block just by changing the boolean input variable linked which varies the outcome of the if statement code block thereby allowing the desired script type to be used.

## Problems encountered

Problem: There was an unexpected error when I first ran terraform plan where terraform flagged the conditional logic code block.

Solution: I realised I had placed the conditional code block outside of the instance resource block meaning it was not able to be parsed in correctly.
