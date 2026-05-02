resource "aws_efs_file_system" "practicEFS" {
  creation_token = "Practic-28022025"

  lifecycle_policy {
    transition_to_ia = "AFTER_30_DAYS"
  }
  tags = {
    Name = "Practic-28022025"
    Env = "Lab"
    Date = "28022025"
    Backup = "DISABLED"
  }
}