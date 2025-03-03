provider "aws" {
    region = var.aws_rgn
  
}

variable "aws_rgn" {
    default = "ap-south-1"
    description = "My AWS instance region"
    type = string  
}

variable "insta_type" {
    description = "define instance type"
    type = string
    default = "t2.micro"
  
}

variable "insta_name" {
    description = "Name of the VM"
    type = string
    default = "Terraform_func_EC2"  
}

locals {
  common_tags ={
    name = "Rajani_test"
    role = "Devops"
    environment = "dev"
    createddate = "date-${formatdate("DDMMYYYY", timestamp())}"
    createdtime = timestamp()
    Name1 = upper(var.insta_name)
   // Name2 = "concat(["$var.insta_name","$var.insta_type"])"
    type = element(["var.insta_name","var.insta_type","test"],1) 
  }
}

resource "aws_instance" "name" {
    instance_type = var.insta_type
    tags = local.common_tags
    ami = data.aws_ami.fetch_ami.id

  
}

data "aws_ami" "fetch_ami" {
    most_recent = true
    owners = ["amazon"]

    filter {
      name = "name"
      values = ["amzn2-ami-hvm-*-x86_64-gp2"]
    }
    filter {
    name = "root-device-type"
    values = ["ebs"]
    }
    filter {
    name = "virtualization-type"
    values = ["hvm"]
    }
}

data "aws_vpc" "fetch_vpc" {
    default = true
}

output "Ami" {
  value = data.aws_ami.fetch_ami.id
}

output "VPC" {
    value = data.aws_vpc.fetch_vpc.id
  
}