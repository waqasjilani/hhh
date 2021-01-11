provider "aws" {
  region = "eu-west-2"
}

terraform {
  backend "s3" {
    bucket = "waqas.tf"
    key    = "tf.tfstate"
    region = "eu-west-2"
  }
}

resource "aws_s3_bucket" "kyo" {
  bucket = "lovetheebucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_instance" "waqasec2" {
  ami           = "ami-0e80a462ede03e653"
  instance_type = "t2.micro"
  tags = {
    Name        = "EC2 jenkins"
    }
}
