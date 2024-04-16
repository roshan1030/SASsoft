provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"
  key_name      = "terraform"

  tags = {
    Name = "Saasoft_server"
  }
}

resource "aws_security_group" "allow_ssh_new" {
  name        = "allow-ssh_new"
  description = "Allow SSH access from all IPs"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}