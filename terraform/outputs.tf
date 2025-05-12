output "s3_bucket_name" {
  value = aws_s3_bucket.static_site.id
}

output "s3_website_url" {
  value = "http://${aws_s3_bucket.static_site.bucket}.s3-website.${var.aws_region}.amazonaws.com"
}
