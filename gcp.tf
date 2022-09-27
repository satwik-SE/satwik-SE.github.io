resource "google_storage_bucket" "storage" {
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

resource "google_storage_bucket_object" "bucket" {
  name   = "butterfly01"
  source = "/images/nature/garden-tiger-moth.jpg"
  bucket = google_storage_bucket.storage.name
}

resource "google_app_engine_flexible_app_version" "app_version" {
  runtime             = "python27"
  
  handlers {
    security_level = "secure_default"
  }
  
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

resource "google_container_cluster" "container" {
  name               = "marcellus-wallace"
  location           = "us-central1-a"
  initial_node_count = 3
  node_config {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    disk_size_gb = ""

  }
}

resource "google_container_node_pool" "node_pool" {
  name       = "my-node-pool"
  cluster    = google_container_cluster.container.name
  node_count = 1

  node_config {
    disk_size_gb = ""
}
}

resource "google_compute_firewall" "firewall" {
  name    = "test-firewall"
  network = google_compute_network.network.name

  allow {
    protocol = "all"
  }

  source_ranges = ["*"]
}

resource "google_compute_network" "network" {
  name = "test-network"
}

resource "google_compute_subnetwork" "subnetwork" {
  name          = "test-subnetwork"
  ip_cidr_range = "10.2.0.0/16"
  region        = "us-central1"
  network       = google_compute_network.network.name
  secondary_ip_range {
    range_name    = "tf-test-secondary-range-update1"
    ip_cidr_range = "192.168.10.0/24"
  }
}

resource "google_compute_subnetwork_iam_binding" "subnetwork_binding" {
  subnetwork = google_compute_subnetwork.subnetwork.name
  role = "roles/compute.networkUser"
  members = ["allUsers"]
}

resource "google_compute_instance" "instance" {
  name         = "test"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  attached_disk {
    source = ""
  }

}

resource "google_compute_instance_iam_binding" "instance_binding" {
  instinstance_name = google_compute_instance.instance.name
  role = "roles/compute.networkUser"
  members = ["allUsers"]
}

resource "google_pubsub_topic" "topic" {
  name = "example-topic"

  labels = {
    foo = "bar"
  }

  message_retention_duration = "86600s"
}

resource "google_pubsub_subscription" "subscription" {
  name  = "example-subscription"
  topic = google_pubsub_topic.topic.name

  ack_deadline_seconds = 20

  labels = {
    foo = "bar"
  }

  push_config {
    push_endpoint = "https://example.com/push"

    attributes = {
      x-goog-version = "v1"
    }
  }
}

resource "google_pubsub_topic_iam_member" "topic_member" {
  topic = google_pubsub_topic.topic.name
  role = "roles/viewer"
  member = "allUsers"
}

resource "google_pubsub_subscription_iam_member" "subscription_member" {
  subscription = google_pubsub_subscription.subscription.name
  role         = "roles/editor"
  member       = "allAuthenticatedUsers"
}