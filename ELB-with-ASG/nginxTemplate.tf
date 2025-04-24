resource "aws_launch_template" "nginx-ubuntu" {
  name = "nginx-ubuntu"

  block_device_mappings {
    device_name = "/dev/sdf"
    ebs {
      volume_size = 10
    }
  }
  instance_type = var.insType
  key_name = var.keyName
  image_id = var.image_id
  instance_initiated_shutdown_behavior = "terminate"
  network_interfaces {
    security_groups = [ "sg-05d274dc9c715e508" ]
    associate_public_ip_address = true
  }
  tags = {
    Name = "Nginx-Ubuntu"
    OS = "Ubuntu"
  }
  user_data = base64encode(file("./nginx.sh"))
}