
/*
terraform {
  required_providers {
    aws = {
      region  = "ap-south-1"
      version = "aws-cli/1.29.19 Python/3.9.16 Linux/5.14.0-284.25.1.el9_2.x86_64 botocore/1.31.19"
    }
  }
}
*/

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "Ec2" {
  ami           = "ami-008b85aa3ff5c1b02"
  instance_type = "t2.micro"
  key_name      = "R-A"
  security_groups = ["sg-02833e51682585082"]
  
  tags = {
    Name = "EC2_Tomcat_Server"
  }
}
