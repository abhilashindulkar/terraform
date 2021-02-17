provider "aws" {
    region = "ap-south-1"
    shared_credentials_file = "/c/Users/admin/.aws/credentials"
    profile = "starkonbullet"
  
}

resource "aws_instance" "resource-addressing" {
    ami = "ami-0e8710d48cc4ea8dd"
    instance_type = "t2.micro"
    key_name = "awsabhi"
    tags = {
      "Name" = "test-server"
      "enivornment" = "testing"
    }

  }

resource "aws_ebs_volume" "example" {
    availability_zone = "ap-south-1a"
    size = 10
  
}

resource "aws_volume_attachment" "vol-attached" {
    device_name = "/dev/sdh"
    volume_id = aws_ebs_volume.example.id
    instance_id = aws_instance.resource-addressing.id
  
}
