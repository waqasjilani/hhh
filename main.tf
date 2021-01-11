provider "aws" {
  region = "eu-west-2"
  AWS_ACCESS_KEY_ID = "AKIARHUK6R2H4YIW4ISS"
  AWS_SECRET_ACCESS_KEY = "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"
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
