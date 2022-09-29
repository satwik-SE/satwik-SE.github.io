resource "google_spanner_instance" "spanner" {
  config       = "regional-europe-west1"
  display_name = "main-instance"
  num_nodes    = 1
}

resource "google_spanner_database" "spanner-1" {
  instance = google_spanner_instance.spanner.name
  name     = "my-database"
  # oak9: google_spanner_database.encryption_config.kms_key_name is not configured
  version_retention_period = "3d"
  ddl = [
    "CREATE TABLE t1 (t1 INT64 NOT NULL,) PRIMARY KEY(t1)",
    "CREATE TABLE t2 (t2 INT64 NOT NULL,) PRIMARY KEY(t2)",
  ]
  deletion_protection = false
}

resource "google_spanner_database" "spanner-2" {
  instance = google_spanner_instance.spanner.name
  name     = "my-database"
  version_retention_period = "3d"
  ddl = [
    "CREATE TABLE t1 (t1 INT64 NOT NULL,) PRIMARY KEY(t1)",
    "CREATE TABLE t2 (t2 INT64 NOT NULL,) PRIMARY KEY(t2)",
  ]
  deletion_protection = false
}

resource "google_spanner_instance_iam_binding" "spanner"{
    instance = google_spanner_instance.spanner.name
    role = ""
    members = [ "allUsers" ]
  # oak9: google_spanner_instance_iam_binding.members is not configured
}

resource "google_spanner_instance_iam_member" "spanner"{
    instance = google_spanner_instance.spanner.name
    role = ""
    member = "allAuthenticatedUsers"
}

resource "google_spanner_database_iam_binding" "spanner"{
    instance = google_spanner_database.spanner-1.name
    role = ""
    members = [ "allUsers" ]
}

resource "google_spanner_database_iam_member" "spanner"{
    instance = google_spanner_database.spanner-2.name
    role = ""
    member = "allAuthenticatedUsers"
}

