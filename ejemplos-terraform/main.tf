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
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = var.bloque_cidr
    }
}

variable "bloque_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
    description = "Range CIDR for SG"
}

output "name_sg"{
    value = aws_security_group.ejemplo_sg.name

}