resource "aws_instance" "jenkinsUbuntuServer" {
  ami = data.aws_ami.latest_ubuntu.id
  instance_type = var.instanceType
  availability_zone = var.availabilityZone
  key_name = "Practic"
  vpc_security_group_ids = [ "sg-05d274dc9c715e508" ]
  user_data = file("./insta.sh")

  tags = {
    Name = "Jenkins - Ubuntu"
    Env = "Dev"
    Date = "17042025"
    Size = "08 GB"
  }
}