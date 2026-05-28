variable "name" {
  type = string
  default = "practic"
}
variable "location" {
  type = string
  default = "Central India"
  description = "Central India is default resion location"
}
variable "connection_string" {
  type = map(string)
  default = {
    "name" = "Nathsarkar"
    "type" = "SQLServer"
    "value" = "add here"
  }
}