resource "aws_fms_policy" "example" {
  name                  = "FMS-Policy-Example"
  exclude_resource_tags = false
}

resource "aws_iot_thing" "example" {
  name = "example"

  attributes = {
    First = "examplevalue"
  }
}