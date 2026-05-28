variable "name" {
  type = string
  default = "practic"
}
variable "location" {
  type = string
  default = "Central India"
  description = "Default location is Central India."
}
variable "address_prefixes" {
  type = list(string)
  default = [ "10.0.1.0/24" ]
}
variable "address_space" {
  type = list(string)
  default = [ "10.0.0.0/16" ]
}
variable "tags" {
  type = map(string)
  default = {
    Name = "Practic"
    Env = "Dev"
    Resource-Group = "Practic-RG"
  }
}
variable "firewallsubnet" {
  type = string
  default = "AzureFirewallSubnet"
}