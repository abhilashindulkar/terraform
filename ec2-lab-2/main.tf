/*provider "aws" {
    region = "ap-south-1"
   access_key = "<ACCESS-KEY>"
    secret_key = "<SECRET-KEY>"
  
}*/

provider "aws" {
    region = "ap-south-1"
    shared_credentials_file = "/c/Users/admin/.aws/credentials"
    profile = "starkonbullet"
  
}

resource "aws_instance" "test-terraform" {
    ami = "ami-0e8710d48cc4ea8dd"
    instance_type = "t2.micro"
    key_name = "awsabhi"
    tags = {
      "Name" = "test-terraform"
    }
  
}

