resource "aws_instance" "practicLinux" {
  ami = "ami-0f2ce9ce760bd7133"
  instance_type = "t2.micro"
  availability_zone = "ap-south-1b"
  key_name = "Practic"
  
  tags = {
    Name = "PracticLinux"
    Env = "Lab"
    Date = "27022025"
  }
}