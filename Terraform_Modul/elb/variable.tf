variable "image_id_ubuntu" {
  type = string
  default = "ami-00bb6a80f01f03502"
  description = "ubuntu with nginx"
}
variable "listeners" {
  description = "List of ELB listeners"
  type = list(object({
    instance_port     = number
    instance_protocol = string
    lb_port           = number
    lb_protocol       = string
  }))
  default = [
    {
      instance_port     = 80
      instance_protocol = "HTTP"
      lb_port           = 80
      lb_protocol       = "HTTP"
      ssl_certificate_id = null
    },
    {
      instance_port     = 443
      instance_protocol = "HTTPS"
      lb_port           = 443
      lb_protocol       = "HTTPS"
    }
  ]
}
variable "nameELB" {
  type = string
  default = "PracticELB"
  description = "Default value is PracticELB"
}