#Configure AWS provide # Base Block
provider "aws" {
  region = "us-east-1"
}

#Create a VPC

resource "aws_vpc" "main" {
  cidr_block = "192.168.0.0/16"
}

module "test_webserver" {
  source = "./modules/webserver"
  vpc_id = aws_vpc.main.id
  cidr_block = "192.168.0.0/16"
  testserver_name = "Pankaj"
  ami = "ami-0022f774911c1d690"
  instance_type = ""
}

