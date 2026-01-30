resource "aws_efs_backup_policy" "PracticEFSBackup" {
  file_system_id = aws_efs_file_system.practicEFS.id

  backup_policy {
    status = "ENABLED"
  }
  tags = {
    Name = "Practic-30012026"
    Env = "Lab"
    Date = "30012026"
    Backup = "ENABLED"
  }
}