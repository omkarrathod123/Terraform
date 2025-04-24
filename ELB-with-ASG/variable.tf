variable "region" {
  type = string
  description = "Default value is mumbai"
  default = "ap-south-1"
}
variable "lbType" {
  type = string
  default = "application"
}
variable "insType" {
  type = string
  default = "t2.micro"
}
variable "keyName" {
  type = string
  default = "Practic"
}
variable "image_id" {
  type = string
  default = "value"
}