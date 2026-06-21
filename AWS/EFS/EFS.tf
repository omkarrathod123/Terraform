resource "aws_efs_file_system" "practicEFS" {
  creation_token = var.creation_token

  lifecycle_policy {
    transition_to_ia = var.lifecycle_policy.transition_to_ia
  }
  tags = {
    Name = "Practic-28022025"
    Env = "Lab"
    Date = "28022025"
    Backup = "DISABLED"
  }
}