resource "aws_instance" "practicLinux" {
  ami = var.ami
  instance_type = var.instanceType
  availability_zone = "ap-south-1b"
  key_name = "Practic"
  
  tags = {
    Name = "PracticLinux"
    Env = "Lab"
    Date = "03032026"
  }
}