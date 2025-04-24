resource "aws_lb" "applicationELB" {
  name = "application-ELB"
  load_balancer_type = var.lbType
  security_groups = [ "sg-05d274dc9c715e508" ]
  subnets = [ "subnet-0098cd6a11d9d9d56","subnet-0aa2fe8a1c27a5e65","subnet-04ebafb44c2a9c881" ]
}
resource "aws_lb_listener" "http-listener" {
  load_balancer_arn = aws_lb.applicationELB.arn
  port = "80"
  protocol = "HTTP"

  default_action {
    type = "forward"
    target_group_arn = aws_lb_target_group.lbTG.arn
  }
}