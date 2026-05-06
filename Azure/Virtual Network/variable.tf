variable "Location" {
  type = string
  default = "Central India"
}
variable "NameRG" {
  type = string
  default = "Practic-RG"
}
variable "NameNSG" {
  type = string
  default = "Practic-NSG"
}
variable "NameVN" {
  type = string
  default = "Practic-VNet"
}
variable "Tags" {
  type = map(string)
  default = {
    "Resource Group" = "Practic-RG"
    "Environmment" = "Developement"
    "Owner" = "Omkar Rathod"
  }
}