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
variable "os_type" {
  type = string
  default = "Linux"
}
variable "container_info" {
  type = map(string)
  default = {
    "name" = "Linux Test"
    image = "docker pull omkarrathod123/auth-demo:latest"
    cpu = "0.5"
    memory = "1.5"
  }
}