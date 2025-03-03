variable "aws_region" {
    default = "ap-south-1"
    description = "My AWS instance region"
    type = string
  
}

variable "vpc_cidr_range" {
    description = "The CIDR block for the VPC."
    type        = string
    default     = "10.0.0.0/16"
  
}

variable "vpc_name" {
    description = "Name of my VPC"
    type = string
    default = "new_var_vpc"
  
}

variable "pub_subnet_cidr" {
    description = "New subnet cidr range"
    type = string
    default = "10.0.0.0/24"
  
}

variable "subnet_name" {
    description = "subnet name"
    type = string
    default = "my_pub_subnet"
}

variable "availability_zone" {
    description = "Availability zone for the subnet"
    type = string
    default = "ap-south-1a"
}

variable "internet_gateway" {
    description = "Name of the internet gateway"
    type = string
    default = "new-igw"
  
}

variable "new_route_table" {
  description = "Name of the route table"
  type = string
  default = "new_rt_table"
}

variable "security_group_name" {
  description = "The name of the security group."
  type        = string
  default     = "new-security-group"
}

variable "security_group_description" {
    description = "New security group"
    type = string
    default = "Allow SSH and HTTP traffic"
  
}

variable "ingress_port_ssh" {
    description = "ingress port details for ssh"
    type = number
    default = 22
}

variable "ingress_port_http" {
   description = "ingress port details for http"
    type = number
    default = 80
  
}

variable "ingress_cidr_blocks" {
  description = "The CIDR blocks to allow ingress traffic from."
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "key_name" {
    description = "Name of the key pair"
    type = string
    default = "new_key_pair"
  
}

variable "new_key_pair_path" {
    description = "Key pair file path"
    type = string
    default = "new_key_valuefile.pub"
}

variable "new_ami_id" {
    description = "ami id of instance"
    type = string
    default = "ami-00bb6a80f01f03502"
  
}

variable "instance_type" {
  description = "define instance type"
  type = string
  default = "t2.micro"
}

variable "instance_name" {
    description = "name of the instance"
    type = string
    default = "Instance from TerraformVar"
  
}
