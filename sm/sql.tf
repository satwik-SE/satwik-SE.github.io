resource "google_storage_bucket" "a" {
  description             = "KMS key 1"
  deletion_window_in_days = 10
}

resource "app_engine_flexible_app_version" "a" {
  runtime             = "python27"
  handlers {
    security_level = "secure_default"
  }
  
}

resource "google_kms_crypto_key" "a" {
  description             = "KMS key 1"
  deletion_window_in_days = 10
}

resource "google_sql_database_instance" "a" {
  description             = "KMS key 1"
  deletion_window_in_days = 10

  settings {
    ip_configuration {
      require_ssl = false
      ipv4_enabled = true
    }
  }
}