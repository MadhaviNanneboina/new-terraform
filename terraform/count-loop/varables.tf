variable  "ami_id" {
    type = string
    default = "ami-090252cbe067a9e58"
}
variable  "instance_type" {
    type = string
    default = "t3.micro"
}

variable "allow_ssh" {
    type = string
    default = "allo_ssh"
}
variable "description" {
    type = string
    default = "allowing ssh"
}
variable "port_number" {
    type = number
    default = 22
}
variable "protocol" {
    type = string
    default = "tcp"
}
variable "port_cidr" {
    type = list
    default = ["0.0.0.0/0"]
}
variable "instance_names" {
    type = list
    default = ["db" , "frontend" , "backend"]
}