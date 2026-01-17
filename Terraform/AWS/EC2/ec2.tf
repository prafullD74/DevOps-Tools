# AWS Instances [https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#argument-reference]
resource "aws_instance" "myec2" {
  ami           = "amzn2-ami-hvm-x86_64-gp2"
  instance_type = "t2.micro"
  
  # Customize the root block device
  root_block_device {
    volume_size           = "8"
    volume_type           = "gp3"
    encrypted             = true
    delete_on_termination = true
  }

  tags = {
    Name = "Simple"
  }
}

# Defaults to the Region set in the provider configuration.
resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQz1x2cEikKDEY0aIj41qgxMCP/iteneqXSIFZBp5vizPvaoIR3Um9xK7PGoW8giupGn+EPuxIA4cDM4vzOqOkiMPhz5XK0whEjkVzTo4+S0puvDZuwIsdiW9mxhJc7tgBNL0cYlWSYVkz4G/fslNfRPW5mYAM49f4fhtxPb5ok4Q2Lg9dPKVHO/Bgeu5woMc7RY0p1ej6D4CKFE6lymSDJpW0YHX/wqE9+cfEauh7xZcG0q9t2ta6F6fmX0agvpFyZo8aFbXeUBr7osSCJNgvavWbM/06niWrOvYX2xwWdhXmXSrbX8ZbabVohBK41 email@example.com"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.28.0"
    }
  }
}

# Output the instance ID
output "instance_id" {
  description = "The ID of the EC2 instance"
  value = aws_instance.myec2.id
}

# Output the private IP address
output "private_ip" {
  description = "The private IP address of the EC2 instance"
  value = aws_instance.myec2.private_ip
}