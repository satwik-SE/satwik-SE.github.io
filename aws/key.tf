resource "aws_kms_key" "key" {
  name         = "test"
  machine_type = "e2-medium"
  zone         = "us-central1-a"
}