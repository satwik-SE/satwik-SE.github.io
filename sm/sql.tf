resource "google_storage_bucket" "a" {
  description             = "KMS key 1"
  deletion_window_in_days = 10
}