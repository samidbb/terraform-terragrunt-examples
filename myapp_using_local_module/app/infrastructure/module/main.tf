resource "aws_s3_bucket" "b" {
  bucket = local.bucket_name # "my-tf-test-bucket"

  tags = {
    Managedby = "Terraform"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}