variable "bloque_cidr" {
    type = list(string)
    description = "Range CIDR for SG"
    default = ["0.0.0.0/0"]
}

variable "env" {
    type = string
    default = "dev"
}

variable "app" {
    type = string
    default = "bootcamp"
}

variable "password_db" {
    type = string
    sensitive = true
}