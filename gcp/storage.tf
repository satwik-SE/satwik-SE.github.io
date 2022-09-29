resource "google_storage_bucket" "storage1" {
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


resource "google_storage_bucket_object" "object1" {
  name   = "butterfly01"
  source = "/images/nature/garden-tiger-moth.jpg"
  bucket = google_storage_bucket.storage1.name
}

resource "google_storage_bucket_object" "object2" {
  name  =  "butterfly02"
  source = "/images/nature/garden-tiger-moth-1.jpg"
  bucket = google_storage_bucket.storage1.name
}

resource "google_storage_bucket" "storage2" {
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

resource "google_storage_bucket_iam_binding" "storage_binding" {
  bucket = google_storage_bucket.storage2.name
  role = "roles/storage.admin"
  members = ["allUsers"]
}