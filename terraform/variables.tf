variable "bucket_name" {
  description = "Bucket name"
  type        = string
}

variable "domain_name" {
  description = "acm certificate domain name"
  type        = string
}

variable "url" {
  description = "Final url"
  type        = string
}

variable "common_tags" {
  type        = any
  description = "Common aws tags"
}