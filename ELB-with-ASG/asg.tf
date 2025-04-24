resource "aws_autoscaling_group" "nginx-aws_lb_target_group" {
  name = "Nginx-ASG"
  max_size = 10
  min_size = 2
  desired_capacity = 3
  vpc_zone_identifier = [ "subnet-0098cd6a11d9d9d56","subnet-0aa2fe8a1c27a5e65","subnet-04ebafb44c2a9c881" ]
  target_group_arns = [ aws_lb_target_group.lbTG.arn ]
  launch_template {
    id = aws_launch_template.nginx-ubuntu.id
  }
}