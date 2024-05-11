resource "aws_instance" "db" {
    #count = 3
    count = length(instance_names)
    ami = var.ami_id
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = "t3.micro"
    #left side are mandetory arguments right side are values either we can pass by direct value or we can keep that value in variable and we can call that variable
    tags = {
        Name = var.instance_names[count.index]

    }
}
#resouce <resource type> "resource name" we cannot change resource type
resource "aws_security_group" "allow_ssh" {
    name = var.allow_ssh
    description = var.description

    tags = {
        Name = "allow_ssh"
        createdBy = "madhavidasri"

    }
    
    #we can restrict inbound as per now we are allowing only ssh protocals so we have to mention ssh
    #this is not a map this is called as block
    ingress {
        from_port        = var.port_number
        to_port          = var.port_number
        protocol         = var.protocol   #internet works on tcp protocal
        cidr_blocks      = var.port_cidr
        
    }

    egress {
        from_port        = 0                #fromport 0 and to port 0 open for all protocalls(means allow everything)
        to_port          = 0
        protocol         = "-1"              #-1 means all protocols
        cidr_blocks      = ["0.0.0.0/0"]
        
    }
}
    #oubout eppudu allow evrything vundali