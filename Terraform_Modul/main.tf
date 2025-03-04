module "s3" {
  source = "./s3"
  bucket = "omkar-rathod-04032025-practical-Lab"
}
module "vpc" {
  source = "./vpc"
}