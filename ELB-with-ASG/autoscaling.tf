resource "aws_autoscaling_group" "ASG" {
  desired_capacity = 2
  max_size = 10
  min_size = 1
  health_check_type = "ELB"
  health_check_grace_period = 500
  vpc_zone_identifier = [ "subnet-0aa2fe8a1c27a5e65" ]
  target_group_arns = aws_lb.ELB.arn

  launch_template {
    id = aws_launch_template.nginx.id
    version = "$Latest"
  }
}