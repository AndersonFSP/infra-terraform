terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
  access_key = "AKIA5A5SO34NKZS3AW4U"
  secret_key = "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"
}


resource "aws_instance" "app_server" {
  ami = "ami-09e67e426f25ce0d7"
  instance_type = "t2.micro"
  key_name = "iac_alura"
  tags = {
    Name = "Primeira instancia"
  }
}