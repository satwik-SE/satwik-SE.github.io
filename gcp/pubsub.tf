resource "google_pubsub_topic" "topic" {
  name = "example-topic"

  labels = {
    foo = "bar"
  }

  message_retention_duration = "86600s"
}

resource "google_pubsub_subscription" "subscription1" {
  name  = "example-subscription"
  topic = google_pubsub_topic.topic.name

  ack_deadline_seconds = 20

  push_config {
    push_endpoint = "https://example.com/push"

    attributes = {
      x-goog-version = "v1"
    }
  }
}

resource "google_pubsub_subscription" "subscription2" {
  name  = "example-subscription-2"
  topic = google_pubsub_topic.topic.name

  retain_acked_messages = true

  push_config {
    push_endpoint = "https://example.com/push"

    attributes = {
      x-goog-version = "v1"
    }
  }
  expiration_policy {
    ttl = "1235422s"
  }
}