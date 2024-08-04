terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.59.0"
    }
  }
}

# Provider Block
provider "aws" {
  region  = "us-east-1"
}


resource "aws_instance" "ec2demo" {
  ami           = "ami-0533f2ba8a1995cf9"
  instance_type = "t2.micro"
}