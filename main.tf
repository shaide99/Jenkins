provider "aws" {
  region = "us-east-2"
}
resource "aws_instance" "amazon_linx" {
  count                  = 1
  ami                    = "ami-09da212cf18033880"
  instance_type          = "t2.micro"
  key_name               = "Mykey"
  tags = {
    name = "aws_instance"
  }
}
