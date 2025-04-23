resource "aws_elb" "ELB" {
  name = var.nameELB
  availability_zones = ["ap-south-1a","ap-south-1c","ap-south-1b"]

  dynamic "listener" {
    for_each = var.listeners

    content {
      instance_port = listener.value.instance_port
      instance_protocol = listener.value.instance_protocol
      lb_port = listener.value.lb_port
      lb_protocol = listener.value.lb_protocol
    }
  }
}