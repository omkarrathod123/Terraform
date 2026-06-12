resource "aws_instance" "practicLinux" {
  ami = var.ami
  instance_type = var.instances_type
  availability_zone = var.availability_zone
  key_name = var.key_name
  
  tags = {
    Name = "PracticLinux"
    Env = "Lab"
    Date = "27022025"
  }
}