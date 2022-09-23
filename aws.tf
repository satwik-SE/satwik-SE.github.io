resource "google_storage_bucket" "storage" {
  description             = "KMS key 1"
  deletion_window_in_days = 10
}

resource "google_app_engine_flexible_app_version" "app_version" {
  runtime             = "python27"
  
  handlers {
    security_level = "secure_default"
  }
  
}

resource "google_app_engine_application" "app" {
    description = ""
}

resource "google_kms_crypto_key" "kms" {
  description             = "KMS key 1"
  deletion_window_in_days = 10
}

resource "google_sql_database_instance" "sql" {
  description             = "KMS key 1"
  deletion_window_in_days = 10

  settings {
    ip_configuration {
      require_ssl = false
      ipv4_enabled = true
    }
  }
}

resource "google_dns_managed_zone" "example-zone" {
  name        = "example-zone"
  dns_name    = "example-${random_id.rnd.hex}.com."
  
}

resource "google_container_cluster" "primary" {
  name               = "marcellus-wallace"
  location           = "us-central1-a"
  initial_node_count = 3
  node_config {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    

  }
}

resource "google_container_node_pool" "primary_preemptible_nodes" {
  name       = "my-node-pool"
  cluster    = google_container_cluster.primary.id
  node_count = 1

  node_config {
    
}
}