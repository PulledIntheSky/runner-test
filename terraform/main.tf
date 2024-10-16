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
  region = "us-east-1"  # Specify your desired AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-06b21ccaeff8cd686"  # Replace with a valid AMI ID for your region
  instance_type = "t2.micro"               # Specify the instance type

  tags = {
    Name = "ExampleInstance"
  }
}
