variable "bucket_name" {
  description = "Name of the S3 bucket. Must be Unique across AWS"
  type        = string
}

variable "tags" {
  description = "Tages to set on the bucket"
  type        = string
}

variable "env" {
  description = "The environment name (qa, dev, prod)"
  type        = string
}