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
  description = "Default Size is Standard_DS1_v2"
}
variable "address_space" {
  type = list(string)
  default = [ "10.0.0.0/16" ]
}
variable "address_prefixes" {
  type = list(string)
  default = [ "10.0.1.0/24" ]
}
variable "tags" {
  type = map(string)
  default = {
    Name = "Practic"
    Env = "Dev"
    Resource-Group = "Practic-RG"
  }
}