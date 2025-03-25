provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "cicd" {
  ami           = "ami-0427090fd1714168b"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0c0028e78d6709111"
  key_name      = key_name = "testkey" # optional, but recommended

  tags = {
    Name = "CICD_pipeline"
  }
}

output "instance_public_ip" {
  value = aws_instance.cicd.public_ip
}
