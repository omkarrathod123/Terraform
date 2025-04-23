resource "aws_lb" "ELB" {
  name = "Practic-ELB"
  load_balancer_type = "application"
  security_groups = [ "0mK4r" ]
  subnets = [ "subnet-0aa2fe8a1c27a5e65" ]
}
resource "aws_lb_listener" "ELBlistner" {
  load_balancer_arn = aws_lb.ELB.arn
  port = "80"
  protocol = "HTTP"

  default_action {
    type = "forward"
    target_group_arn = aws_autoscaling_group.ASG.arn
  }
}