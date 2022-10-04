output "name_sg" {
    value = aws_security_group.ejemplo_sg.name
}

output "pwd_db" {
    value = var.password_db
}