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


  tags = {
    Name = "Nginx-Ubuntu"
    OS = "Ubuntu"
  }
  user_data = file("./nginx.sh")
}