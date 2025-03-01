terraform {
 backend "s3" {
    bucket         = "mydevopsterraformbuckets"  # Name of the S3 bucket where the state will be stored.
    region         =  "us-east-1"
    key            = "terraform.tfstate" # Path within the bucket where the state will be read/written.
    
}
}