resource "aws_elb" "ELB" {
  name = "Practic-ELB"
  availability_zones = ["ap-south-1a","ap-south-1c","ap-south-1b"]

  listener {
    instance_port = 80
    instance_protocol = "HTTP"
    lb_port = 80
    lb_protocol = "HTTP"
  }
  listener {
    instance_port = 443
    instance_protocol = "HTTPS"
    lb_port = 443
    lb_protocol = "HTTPS"
  }
}