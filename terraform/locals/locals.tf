locals {
  ami_id = "090252cbe067a9e58"
  sg_gropu = "sg-06c94eed21bfa4da6"
  instance_type = var.instance_name == "db" ? "t3.small" : "t3.micro"
  tags = {
    name = "locals"
  }
}