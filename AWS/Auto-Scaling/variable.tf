variable "region" {
  type = string
  default = "ap-south-1"
  description = "Predefine region is mumbai"
}
variable "vpc_zone_identifier" {
  type = string
  default = "subnet-0aa2fe8a1c27a5e65"
  description = "Predefine Subnet"
}
variable "image_id_ubuntu" {
  type = string
  default = "ami-00bb6a80f01f03502"
  description = "ubuntu with nginx"
}