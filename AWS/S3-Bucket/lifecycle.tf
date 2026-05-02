resource "aws_s3_bucket_lifecycle_configuration" "o-r-bycket-lifecycle" {
  bucket = aws_s3_bucket.omkar-rathod-bucket.id
  depends_on = [ aws_s3_bucket_versioning.omkar-rathod-aws_s3_bucket_versioning ]

  rule {
    id = "config"

    filter {
      prefix = "config/"
    }

    noncurrent_version_expiration {
      noncurrent_days = 90
    }
    noncurrent_version_transition {
      noncurrent_days = 30
      storage_class = "STANDARD_IA"
    }
    noncurrent_version_transition {
      noncurrent_days = 90
      storage_class = "GLACIER"
    }

    status = "Enabled"
  }
}