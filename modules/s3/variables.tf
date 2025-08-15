variable "bucket_name" {
  description = "Name of the S3 bucket. Must be Unique across AWS"
  type        = string
}

variable "env" {
  description = "Environment name (dev, prod, qa)"
  type        = string
}

variable "tags" {
  description = "Tags to apply to the S3 bucket"
  type        = map(string)
}
