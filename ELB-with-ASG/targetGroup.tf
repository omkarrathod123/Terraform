resource "aws_lb_target_group" "lbTG" {
  name = "application-TG"
  port = 80
  protocol = "HTTP"
  vpc_id = "vpc-0c5defe3d148cf078"
}