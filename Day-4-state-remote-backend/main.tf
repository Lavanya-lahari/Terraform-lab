resource "aws_instance" "name" {
    ami = "ami-05b10e08d247fb927"
    instance_type = "t2.micro"
    key_name = "terraform-key"
    availability_zone = "us-east-1a"
    tags = {
      Name = "developer"
    }
   
  
}


resource "aws_s3_bucket" "name" {
    bucket = "mydevopsterraformbuckets"
  
}