resource "aws_instance" "ec2" {
  ami                    = var.ami
  instance_type          = var.instance_type
  availability_zone      = var.availability_zone
  key_name               = var.key_name
}