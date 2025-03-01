resource "aws_launch_template" "nginx" {
  name_prefix = "nginxUbuntu"
  image_id = var.image_id_ubuntu
  instance_type = t2.micro

  user_data = "./nginx.sh"
}