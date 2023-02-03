resource "google_pubsub_topic" "pub-sub" {
  name = "example-topic"

  labels = {
    foo = "bar"
  }

  message_retention_duration = "86600s"
}

resource "google_pubsub_subscription" "pub-sub" {
  # oak9: google_pubsub_subscription.expiration_policy is not configured
  # oak9: google_pubsub_subscription.message_retention_duration is not configured
  name  = "example-subscription"
  topic = google_pubsub_topic.pub-sub.name

  ack_deadline_seconds = 20

  push_config {
    push_endpoint = "https://example.com/push"

    attributes = {
      x-goog-version = "v1"
    }
  }
}