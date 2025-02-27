resource "aws_instance" "name" {
    ami = "ami-05b10e08d247fb927"
    instance_type = "t2.micro"
    key_name = "terraform-key"
    availability_zone = "us-east-1a"
    tags = {
        Name = "dev"
    }
}
  

terraform {
  backend "s3" {
    bucket = "myawsbucketmulticloud"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
