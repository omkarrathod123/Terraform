variable "creation_token" {
  type = string
  default = "Practic-28022025"
}
variable "lifecycle_policy" {
  type = map(string)
  default = {
    "transition_to_ia" = "AFTER_30_DAYS"
  }
}