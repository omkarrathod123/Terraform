resource "aws_instance" "practicLinux" {
  ami = var.ami
  instance_type = var.instance_type
  availability_zone = "ap-south-1b"
  key_name = var.key_name
  
  tags = {
    Name = "PracticLinux"
    Env = "Lab"
    Date = "27022025"
  }
}