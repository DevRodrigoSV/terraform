# resource "aws_instance" "linux" {
#   ami           = "ami-0fbb72557598f5284"
#   instance_type = "t2.medium"
# 
#   key_name = "nodes-key-pair"
# 
#   vpc_security_group_ids = [aws_security_group.jenkins-nodes-sg.id]
# 
#   tags = {
#     Name = "linux"
#   }
# }
# 
# resource "aws_instance" "windows" {
#   ami           = "ami-0f5b2839d5b998f94"
#   instance_type = "t3.medium"
# 
#   key_name = "nodes-key-pair"
# 
#   vpc_security_group_ids = [aws_security_group.jenkins-nodes-sg.id]
#   tags = {
#     Name        = "windows"
#     Environment = "qa"
#   }
# }
# 
# resource "aws_security_group" "jenkins-nodes-sg" {
#   name = "jenkins-nodes-sg"
# 
#   ingress {
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# 
#   ingress {
#     from_port   = 3389
#     to_port     = 3389
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# 
#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }
# 
# output "aws_instance_linux_public_ip" {
#   value = aws_instance.linux.public_ip
# }
# 
# output "aws_instance_windows_public_ip" {
#   value = aws_instance.windows.public_ip
# }
