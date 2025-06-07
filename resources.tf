resource "aws_instance" "web" {
  ami           = "ami-03400c3b73b5086e9"
  instance_type = "t2.medium"
  key_name      ="ec2-user"

  tags = {
    Name = "amazon-linux-2"
  }

  root_block_device {
    volume_size = 20
    volume_type = "gp2"
  }
}