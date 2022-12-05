resource "google_container_cluster" "container" {
  # oak9: google_container_cluster.node_config.labels is not configured
  # oak9: google_container_cluster.workload_identity_config is not configured
  # oak9: Monitoring is not enabled for container cluster
  # oak9: Logging is not enabled for container cluster
  name               = "marcellus-wallace"
  location           = "us-central1-a"
  initial_node_count = 3
  node_config {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    disk_size_gb = ""

  }
}

resource "google_container_node_pool" "container" {
  # oak9: google_container_node_pool.node_config.image_type is not configured
  # oak9: google_container_node_pool.node_config.labels is not configured
  name       = "my-node-pool"
  cluster    = google_container_cluster.container.name
  node_count = 1

  node_config {
    disk_size_gb = ""
}
}
