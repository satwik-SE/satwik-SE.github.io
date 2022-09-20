resource "aws_kms_key" "app" {
  project     = google_project.my_project.project_id
  location_id = "us-central"
}