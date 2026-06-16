variable "name" {
  type = string
  default = "practic"
}
variable "location" {
  type = string
  default = "Central India"
  description = "Central India is default resion location"
}
variable "sku" {
  type = map(string)
  default = {
    "tier" = "Standard"
    "size" = "S1"
  }
}