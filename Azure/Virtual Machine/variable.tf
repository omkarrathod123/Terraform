variable "name" {
  type = string
  default = "practic"
}
variable "location" {
  type = string
  default = "Central India"
  description = "Default location is Central India."
}
variable "vm_size" {
  type = string
  default = "Standard_DS1_v2"
}