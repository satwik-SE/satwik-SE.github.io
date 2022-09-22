resource "google_storage_bucket" "a" {
  description             = "KMS key 1"
  deletion_window_in_days = 10
}

resource "google_app_engine_flexible_app_version" "b" {
  runtime             = "python27"
  
  handlers {
    security_level = "secure_default"
  }
  
}

resource "google_app_engine_application" "c" {
    description = ""
}

resource "google_kms_crypto_key" "d" {
  description             = "KMS key 1"
  deletion_window_in_days = 10
}

resource "google_sql_database_instance" "e" {
  description             = "KMS key 1"
  deletion_window_in_days = 10

  settings {
    ip_configuration {
      require_ssl = false
      ipv4_enabled = true
    }
  }
}