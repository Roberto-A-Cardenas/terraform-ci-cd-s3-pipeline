variable "aws_region" {
  default     = "us-east-1"
  description = "AWS region to deploy resources"
}

variable "bucket_name" {
  description = "Globally unique S3 bucket name"
  default     = "my-ci-cd-static-site-alejandro007" 
}

variable "project_name" {
  description = "Tagging prefix"
  default     = "ci-cd-s3-site"
}
