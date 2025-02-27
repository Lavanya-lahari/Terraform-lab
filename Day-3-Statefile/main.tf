resource "aws_instance" "name" {
    ami = "ami-05b10e08d247fb927"
    instance_type = "t2.nano"
    key_name = "terraform-key"
  
}