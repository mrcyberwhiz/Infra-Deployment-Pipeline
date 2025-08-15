variable "bucket_name" {
  description = "Name of the S3 bucket. Must be Unique across AWS"
  type        = string
}

variable "tags" {
  type = map(string)
  description = "Tags for the S3 bucket"
}

variable "env" {
  description = "The environment name (qa, dev, prod)"
  type        = string
}