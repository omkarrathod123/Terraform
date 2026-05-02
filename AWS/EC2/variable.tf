variable "region" {
  type = string
  default = "ap-south-1"
  description = "Default region is mumbai ( ap-south-1 )"
}
variable "instanceType" {
  type = string
  default = "t3.micro"
}
variable "ami" {
  type = string
  default = "ami-07216ac99dc46a187"
}