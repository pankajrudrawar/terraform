variable "vpc_id" {
  type = string
  description = "VPC ID"
}

variable "cidr_block" {
  type = string
  description = "Subnet Cidr Block"
}

variable "testserver_name" {
  type = string
  description = "Name of the server"
}

variable "ami" {
  type = string
  description = "AMI to use for this test server"
}

variable "instance_type" {
  type = string
  description = "Instance Type"
  default = "t2.micro"
}