provider "aws" {
  region = "us-east-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.22.0"
    }
  }
}

resource "aws_instance" "tf-ec2" {
  ami           = "ami-0ed9277fb7eb570c9"
  instance_type = "t2.micro"
  key_name      = "firstkey" # write your pem file without .pem extension>
  tags = {
    "Name" = "tf-ec2"
  }
}

resource "aws_s3_bucket" "tf-s3" {
  bucket = "esat-tf-test-bucket-new"
}