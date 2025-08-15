resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name
  tags = {
    Name = "${var.env}-s3-15-08-2025"
    Env  = var.env
  }
}