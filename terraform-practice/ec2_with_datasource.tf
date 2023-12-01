# Resource Block
resource "aws_instance" "ec2demo" {
  count              = var.instance_count
  instance_type      = var.instance_type
  ami                = data.aws_ami.latest_amazon_linux.id
  user_data          = "${file("app.sh")}"
  key_name           = "awsdevops"
}
