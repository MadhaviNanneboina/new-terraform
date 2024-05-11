resource "aws_instance" "db" {
    ami = var.ami_id
    instance_type = var.instance_name == "db" ? "t3.large" : "t3.micro"
    #left side are mandetory arguments right side are values either we can pass by direct value or we can keep that value in variable and we can call that variable


}
