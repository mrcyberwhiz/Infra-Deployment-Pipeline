resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name
  tags = {
    Name = "${var.env}-s3-${count.index}"
    Env  = var.env
  }
}