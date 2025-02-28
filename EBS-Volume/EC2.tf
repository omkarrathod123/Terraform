resource "aws_instance" "EBSTest" {
  ami = "ami-00bb6a80f01f03502"
  availability_zone = "ap-south-1b"
  instance_type = "t2.micro"

  key_name = "Practic"
  tags = {
    Name = "EBSTest"
    Env = "Lab"
  }
}