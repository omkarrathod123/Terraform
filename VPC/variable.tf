variable "VPC_cidr_block" {
  type = string
  default = "192.168.0.0/16"
}
variable "Public_cidr_block" {
  type = string
  default = "192.168.1.0/24"
}
variable "Private_cidr_block" {
  type = string
  default = "192.168.2.0/24"
}