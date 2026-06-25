resource "aws_efs_file_system" "practicEFS" {
  creation_token = var.creation_token

  lifecycle_policy {
    transition_to_ia = var.lifecycle_policy.transition_to_ia
  }
  tags = var.tags
}
resource "aws_efs_backup_policy" "PracticEFSBackup" {
  file_system_id = aws_efs_file_system.practicEFS.id

  backup_policy {
    status = var.backup_policy
  }
}