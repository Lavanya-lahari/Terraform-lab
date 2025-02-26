variable "ami_id" {
    description = "inserting ami value"
    type = string
    default = "ami-05b10e08d247fb927" 
  
}

variable "type" {
    type = string
    default = "t2.micro"
  
}


variable "key" {
    type = string
    default = "terraform-key"
  
}

