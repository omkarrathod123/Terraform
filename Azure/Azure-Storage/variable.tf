variable "location" {
  type = string
  default = "Central India"
}
variable "name" {
  type = string
  default = "Practic-RG"
}
variable "tags" {
  type = map(string)
  default = {
    "Resource Group" = "Practic-rg"
    "Environmment" = "Developement"
    "Owner" = "Omkar Rathod"
  }
}