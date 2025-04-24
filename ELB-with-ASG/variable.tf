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
  default = "ami-06b6e5225d1db5f46"
}