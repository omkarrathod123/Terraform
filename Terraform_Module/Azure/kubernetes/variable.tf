variable "name" {
  type = string
  default = "practic"
}
variable "location" {
  type = string
  default = "Central India"
  description = "Default location is Central India."
}
variable "tags" {
  type = map(string)
  default = {
    Name = "Practic"
    Env = "Dev"
    Resource-Group = "Practic-RG"
  }
}
variable "service_principal" {
  type = list(string)
  default = [ "000000-0000-000000-000000", "0000000000000000000000000000000" ]
}
variable "vm_size" {
  type = string
  default = "Standard_D2_v2"
  description = "Default VM size is Standard_D2_v2"
}
variable "node_count" {
  type = number
  default = 1
  description = "default is 1"
}