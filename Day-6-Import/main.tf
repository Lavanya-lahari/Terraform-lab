resource "aws_instance" "import" {
    ami = "ami-05b10e08d247fb927"
    instance_type = "t2.micro"
    key_name = "terraform-key"
    tags = {
      Name = "developer"
    }

  
}