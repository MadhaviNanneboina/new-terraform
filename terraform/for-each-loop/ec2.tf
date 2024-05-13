resource "aws_instance" "expense" {
    for_each = var.instance_type    #it will have eac.key and each.value
    ami = data.aws_ami.ami_info.id
    instance_type = each.value
    #left side are mandetory arguments right side are values either we can pass by direct value or we can keep that value in variable and we can call that variable
    tags = {
        Name = each.key

    }
}