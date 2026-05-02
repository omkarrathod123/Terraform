resource "aws_s3_bucket" "PracticalS3" {
  bucket = var.bucket
}
resource "aws_s3_bucket_versioning" "PracticalS3Versioning" {
  bucket = aws_s3_bucket.PracticalS3.id
  versioning_configuration {
    status = "Enabled" 
  }
}