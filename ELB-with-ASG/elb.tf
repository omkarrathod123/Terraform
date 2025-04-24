resource "aws_lb" "applicationELB" {
  name = "application-ELB"
  load_balancer_type = var.lbType
  security_groups = [ "" ]
  subnets = [ "" ]
}