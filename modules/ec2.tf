resource "aws_instance" "web" {
  ami             = var.ami
  instance_type   = var.instace_type
  security_groups = var.sg_group
}
