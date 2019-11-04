provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "web" {
  ami           = "ami-08c3796e1e14b07f8"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld-${var.environment}"
  }
}