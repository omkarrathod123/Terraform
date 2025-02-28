resource "aws_ebs_volume" "volume1" {
  availability_zone = "ap-south-1b"
  size = "20"
  type = "gp2"

  tags = {
    Name = "volume1"
    Env = "Lab"
    Size = "20"
    Type = "Gunral Purpose 2"
  }
}