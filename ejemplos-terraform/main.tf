terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" { 
  region = "us-east-1"
}

resource "aws_security_group" "ejemplo_sg" {
    description = "SG creado en clase Cloudcamp"
    ingress = {
        from_port = 22
        to_port = 22
        protocol = "tcp"
    }
}