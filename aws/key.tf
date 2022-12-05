resource "aws_kms_key" "key" { # oak9:  should be set to any of sign_verify, encrypt_decrypt
  # oak9: aws_kms_key.tags is not configured
  name         = "test"
  machine_type = "e2-medium"
  zone         = "us-central1-a"
}