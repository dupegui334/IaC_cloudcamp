resource "aws_security_group" "ejemplo_sg" {
    description = "SG creado en clase Cloudcamp"
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = var.bloque_cidr
    }
}