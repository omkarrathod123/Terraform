variable "location" {
  type = string
  default = "Central India"
}
variable "name" {
  type = string
  default = "Practic"
}
variable "account_tier" {
  type = string
  default = "Standard"
}
variable "container_access_type" {
  type = string
  default = "private"
}
variable "tags" {
  type = map(string)
  default = {
    "Resource Group" = "Practic-rg"
    "Environmment" = "Developement"
    "Owner" = "Omkar Rathod"
  }
}