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
variable "backup_policy" {
  type = string
  default = "ENABLED"
}
variable "tags" {
  type = map(string)
  default = {
    Name = "Practic-28022025"
    Env = "Lab"
    Date = "28022025"
    Backup = "DISABLED"
  }
}