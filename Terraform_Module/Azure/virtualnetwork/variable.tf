variable "location" {
  type = string
  default = "Central India"
}
variable "name" {
  type = string
  default = "practic"
}
variable "address_space" {
  type = list(string)
  default = [ "10.0.0.0/16" ]
}
variable "address_prefixes" {
  type = list(string)
  default = [ "10.0.1.0/26" ]
}
variable "dns_servers" {
  type = list(string)
  default = [ "10.0.0.4", "10.0.0.5" ]
}
variable "Tags" {
  type = map(string)
  default = {
    "Resource Group" = "Practic-RG"
    "Environmment" = "Developement"
    "Owner" = "Omkar Rathod"
  }
}