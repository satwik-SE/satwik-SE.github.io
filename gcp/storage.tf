resource "google_storage_bucket" "storage-1" {
  # oak9: google_storage_bucket.versioning.enabled is not configured
  # oak9: google_storage_bucket.logging is not configured
  name          = "image-store.com"
  location      = "EU"
  force_destroy = true

  uniform_bucket_level_access = false
  cors {
    origin          = ["*"]
    method          = ["*"]
    response_header = ["*"]
    max_age_seconds = 3600
  }

}

resource "google_storage_bucket_object" "storage-1" {
  name   = "butterfly01"
  source = "/images/nature/garden-tiger-moth.jpg"
  bucket = google_storage_bucket.storage-1.name
}

resource "google_storage_bucket_object" "storage-1" {
  name  =  "butterfly02"
  source = "/images/nature/garden-tiger-moth-1.jpg"
  bucket = google_storage_bucket.storage-1.name
}

resource "google_storage_bucket" "storage-2" {
  # oak9: google_storage_bucket.labels is not configured
  # oak9: google_storage_bucket.versioning.enabled is not configured
  # oak9: google_storage_bucket.cors is not configured
  # oak9: google_storage_bucket.logging is not configured
  name          = "image-store.com"
  location      = "EU"
  force_destroy = true

  uniform_bucket_level_access = true

  encryption {
    default_kms_key_name = google_kms_crypto_key.kms.name
  }
  retention_policy {
    retention_period = "1000000000s"
  }
  
}

resource "google_storage_bucket_iam_binding" "storage-2" {
  bucket = google_storage_bucket.storage-2.name
  role = "roles/storage.admin"
  members = ["allUsers"]
}