resource "aws_instance" "web" {
  ami           = "ami-03400c3b73b5086e9"
  instance_type = "t2.medium"
  key_name      ="ec2-user"

  tags = {
    Name = "HelloWorld"
  }
}