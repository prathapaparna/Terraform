# Resource Block
resource "aws_instance" "ec2demo" {
  count              = var.instance_count
  ami                = lookup(var.ami_id,var.region)
  instance_type      = var.instance_type
  availability_zone  = element(var.availability_zones, count.index) # count index starts with 0
  key_name      = "awsdevops"
}
