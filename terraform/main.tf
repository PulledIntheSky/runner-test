terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.72.1"
    }
  }

  required_version = ">= 1.0.0"
}

provider "aws" {
  region     = "us-east-1"  # Specify your desired AWS region
  access_key = var.aws_access_key  # Reference to a variable
  secret_key = var.aws_secret_key  # Reference to a variable
}

variable "aws_access_key" {
  description = "AWS Access Key"
  type        = string
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
  type        = string
}

resource "aws_instance" "example" {
  ami           = "ami-06b21ccaeff8cd686"  # Replace with a valid AMI ID for your region
  instance_type = "t2.micro"               # Specify the instance type

  tags = {
    Name = "ExampleInstance"
  }
}
