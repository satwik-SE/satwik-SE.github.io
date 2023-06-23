resource "google_storage_bucket" "test_bucket" {
  name          = "satwik_test"
  location      = "US-EAST1"
  project = var.project_id
}
resource "google_storage_bucket_object" "functions_file" {
    name = "functions_object"
    bucket = google_storage_bucket.test_bucket.name
    content = "test_content"
}