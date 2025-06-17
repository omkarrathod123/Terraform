module "s3" {
  source = "./s3"
  bucket = "omkar-rathod-04032025-practical-Lab"
}
module "vpc" {
  source = "./vpc"
}
module "ec2" {
  source = "./ec2"
}
module "elb" {
  source = "./elb"
}
module "eks"{
  source = "./eks"
  instance_types = "t3.large"
}