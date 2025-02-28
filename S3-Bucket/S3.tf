resource "aws_s3_bucket" "omkar-rathod-bucket" {
  bucket = "rathod-omkar-yg-bucket-27022025"

  tags = {
    name = "rathod-omkar-yg-bucket-27022025"
    Env = "Lab"
    Date = "27022025"
  }
}
resource "aws_s3_bucket_versioning" "omkar-rathod-aws_s3_bucket_versioning" {
  bucket = aws_s3_bucket.omkar-rathod-bucket.id
  versioning_configuration {
    status = "Enabled" 
  }
}
resource "aws_s3_bucket_acl" "OR-bucket-ACL" {
  bucket = aws_s3_bucket.omkar-rathod-bucket.id
  acl = "private"
}