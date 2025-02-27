terraform {
  backend "s3" {
    bucket = "myawsbucketmulticloud"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}