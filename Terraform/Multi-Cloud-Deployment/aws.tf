resource "aws_s3_bucket" "test" {
  bucket = "multi-cloud-bucket"

  object_lock_enabled = true

  tags = {
    Name        = "Multi Cloud Deployment"
    Environment = "Test"
  }
}

resource "aws_s3_bucket_versioning" "versioning_test" {
  bucket = aws_s3_bucket.test.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_object_lock_configuration" "lock_test" {
  bucket = aws_s3_bucket.test.id

  rule {
    default_retention {
      mode = "COMPLIANCE"
      days = 5
    }
  }
}
