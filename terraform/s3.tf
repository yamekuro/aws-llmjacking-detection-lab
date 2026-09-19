data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "logs" {
  bucket = "llmjacking-lab-logs-${data.aws_caller_identity.current.account_id}"
  
  # Lab environment: created and destroyed daily, so destroy must not block on
  # a non-empty bucket. In production this stays false, so an accidental
  # destroy cannot wipe the forensic evidence.
  force_destroy = true
}

resource "aws_s3_bucket_public_access_block" "logs" {
  bucket = aws_s3_bucket.logs.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
