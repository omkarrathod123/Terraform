variable "region" {
  type = string
  default = "ap-south-1"
  description = "Default region is mumbai ( ap-south-1 )"
}
variable "instanceType" {
  type = string
  default = "t2.micro"
}
variable "availabilityZone" {
  type = string
  default = "ap-south-1b"
}