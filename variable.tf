variable "region" {
  type        = string
  description = "Region to Deploy VPC"
  default     = "us-east-1"
}

variable "ami" {
  description = "ID of AMI to use for the instance"
  type        = string
  default     = "ami-005f9685cb30f234b"
}

variable "instance" {
  description = "The instance type of EC2"
  type        = string
  default     = "t2.micro"
}

variable "vpc_id" {
  description = "VPC ID to use if not creating VPC."
  type        = string
  default     = "vpc-058256dae85028b14"
}

resource "aws_s3_bucket" "jenkinsartifactsbucket" {
  bucket = "jenkinsartifactsbucket"

  tags = {
    Name = "jenkins s3 bucket"
  }
}

