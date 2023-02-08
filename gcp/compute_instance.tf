resource "google_compute_instance" "instance" {
  # oak9: google_compute_instance.labels is not configured
  name         = "test"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
    kms_key_self_link = ""
    # oak9: Manage the OS disk encryption using customer managed keys
    disk_encryption_key_raw = ""
  }

  attached_disk {
    
  }

  network_interface {
    network = google_compute_network.network.name
    subnetwork = google_compute_subnetwork.subnetwork.name
    access_config {
        network_tier = "STANDARD"
    }
  }

}

resource "google_compute_instance_iam_binding" "instance_binding" {
  instinstance_name = google_compute_instance.instance.name
  role = "roles/compute.networkUser"
  members = ["allUsers"]
}

resource "google_compute_instance_iam_member" "instance_member" {
  instinstance_name = google_compute_instance.instance.name
  member = "allAuthenticatedUsers"
  role = "roles/compute.networkUser"
}


