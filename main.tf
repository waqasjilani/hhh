provider "aws" {
  region = "eu-west-2"
}

resource "aws_s3_bucket" "kyo" {
  bucket = "my-tfie-test-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_instance" "waqasec2" {
  ami           = "ami-0e80a462ede03e653"
  instance_type = "t2.micro"
}
