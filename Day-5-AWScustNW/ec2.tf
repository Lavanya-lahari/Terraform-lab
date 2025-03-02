#Creating of server
resource "aws_instance" "prod" {
    ami = "ami-064b71eca68aadfb8"
    instance_type = "t2.micro"
    key_name = "keypair-sydney"
    subnet_id = aws_subnet.prod.id
    vpc_security_group_ids = [aws_security_group.allow_tls.id]
    tags = {
        Name = "prod-ec2"
    }
  
}