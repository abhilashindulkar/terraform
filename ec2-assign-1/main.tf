provider "aws" {
    region = "ap-south-1"
    shared_credentials_file = "/c/Users/admin/.aws/credentials"
    profile = "starkonbullet"
  
}

resource "aws_instance" "example-windows" {
    ami = "ami-0fcd8d621cf9ab602"
    instance_type = "t2.micro"
    key_name = "awsabhi"
    tags = {
      "Name" = "Windows2019"
    }
  
}