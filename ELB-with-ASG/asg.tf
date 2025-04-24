resource "aws_autoscaling_group" "nginx-aws_lb_target_group" {
  name = "Nginx-ASG"
  max_size = 10
  min_size = 2
  desired_capacity = 3
  vpc_zone_identifier = [ "" ]
  target_group_arns = [ aws_lb_target_group.lbTG.arn ]
  launch_template {
    id = aws_launch_template.nginx-ubuntu.id
  }
}