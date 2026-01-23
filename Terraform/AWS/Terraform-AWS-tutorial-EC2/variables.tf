# Input variables let you parametrize the behavior of your Terraform configuration.

variable "instance_name" {
  description = "Value of the EC2 instance's Name tag."
  type        = string
  default     = "learn-terraform"
}

variable "instance_type" {
  description = "The EC2 instance's type."
  type        = string
  default     = "t2.micro"
}

# Input variables allow you to update the EC2 instance's name and type without modifying your configuration files each time.
