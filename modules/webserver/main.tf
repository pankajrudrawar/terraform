terraform {
  required_version = ">=0.12"
}
resource "aws_subnet" "test" {
  vpc_id = var.vpc_id
  cidr_block = var.cidr_block
}

resource "aws_instance" "testserver" {
  ami = var.ami
  instance_type = var.instance_type
  subnet_id = aws_subnet.test.id
  tags = {
    Name = "${var.testserver_name} webserver"
  }
}
