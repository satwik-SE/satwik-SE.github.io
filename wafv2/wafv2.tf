resource "aws_wafv2_ip_set" "ip_set_demo" {
  name               = "ip_set_demo"
  description        = "Example IP set"
  
#   Valid values are CLOUDFRONT or REGIONAL
  scope              = "REGIONAL"
#   Valid values are IPV4 or IPV6.
  ip_address_version = "IPV4"
  addresses          = ["1.2.3.4/32", "5.6.7.8/32"]

  tags = {
    Name = "ip_set_demo"
    Environment = "dev"
  }
}


resource "aws_wafv2_regex_pattern_set" "wafv2_regex_pattern_demo" { # IPAddressVersion is not configured in file satwik-SE-satwik-SE.github.io/wafv2/wafv2.tf on line: 18
  name        = "wafv2_regex_pattern_demo"
  description = "Example regex pattern set"
  scope       = "REGIONAL"

  regular_expression {
    regex_string = "one"
  }

  regular_expression {
    regex_string = "two"
  }

  tags = {
    Name = "ip_set_demo"
    Environment = "dev"
  }
}


resource "aws_wafv2_rule_group" "wafv2_rule_demo" { # Rules.Statement.SizeConstraintStatement.ComparisonOperator is not configured in file satwik-SE-satwik-SE.github.io/wafv2/wafv2.tf on line: 38 # IPAddressVersion is not configured in file satwik-SE-satwik-SE.github.io/wafv2/wafv2.tf on line: 38
  name     = "wafv2_rule_demo"
  scope    = "REGIONAL"
  capacity = 2

  rule {
    name     = "rule-1"
    priority = 1

    action {
      allow {}
    }

    statement {

      geo_match_statement {
        country_codes = ["US", "NL"]
      }
    }

    visibility_config {
      cloudwatch_metrics_enabled = false
      metric_name                = "friendly-rule-metric-name"
      sampled_requests_enabled   = false
    }
  }

  visibility_config {
    cloudwatch_metrics_enabled = false
    metric_name                = "friendly-metric-name"
    sampled_requests_enabled   = false
  }
}

resource "aws_wafv2_web_acl" "wafv2_web_acl_demo" { # IPAddressVersion is not configured in file satwik-SE-satwik-SE.github.io/wafv2/wafv2.tf on line: 72
  name        = "managed-rule-example"
  description = "Example of a managed rule."
  scope       = "REGIONAL"

  default_action {
    allow {}
  }

  rule {
    name     = "rule-1"
    priority = 1

    override_action {
      count {}
    }

    statement {
      managed_rule_group_statement {
        name        = "AWSManagedRulesCommonRuleSet"
        vendor_name = "AWS"

        excluded_rule {
          name = "SizeRestrictions_QUERYSTRING"
        }

        excluded_rule {
          name = "NoUserAgent_HEADER"
        }

        scope_down_statement {
          geo_match_statement {
            country_codes = ["US", "NL"]
          }
        }
      }
    }

    visibility_config {
      cloudwatch_metrics_enabled = false
      metric_name                = "friendly-rule-metric-name"
      sampled_requests_enabled   = false
    }
  }

  tags = {
    Tag1 = "Value1"
    Tag2 = "Value2"
  }

  visibility_config {
    cloudwatch_metrics_enabled = false
    metric_name                = "friendly-metric-name"
    sampled_requests_enabled   = false
  }
}

# this resource use for aws_wafv2_web_acl_association
resource "aws_api_gateway_rest_api" "example" {
  SecurityPolicy = "TLS_1_2"
  KeyType = "API_KEY"
  body = jsonencode({
    openapi = "3.0.1"
    info = {
      title   = "example"
      version = "1.0"
    }
    paths = {
      "/path1" = {
        get = {
          x-amazon-apigateway-integration = {
            httpMethod           = "GET"
            payloadFormatVersion = "1.0"
            type                 = "HTTP_PROXY"
            uri                  = "https://ip-ranges.amazonaws.com/ip-ranges.json"
          }
        }
      }
    }
  })

  name = "example"
}

# this resource use for API Gateway stage
resource "aws_api_gateway_deployment" "example" {
  SecurityPolicy = "TLS_1_2"
  KeyType = "API_KEY"
  rest_api_id = aws_api_gateway_rest_api.example.id

  triggers = {
    redeployment = sha1(jsonencode(aws_api_gateway_rest_api.example.body))
  }

  lifecycle {
    create_before_destroy = true
  }
}

# For web_acl_association
resource "aws_api_gateway_stage" "example" {
  SecurityPolicy = "TLS_1_2"
  KeyType = "API_KEY"
  deployment_id = aws_api_gateway_deployment.example.id
  rest_api_id   = aws_api_gateway_rest_api.example.id
  stage_name    = "example"
}

# For web_acl_association
resource "aws_wafv2_web_acl" "example" { # IPAddressVersion is not configured in file satwik-SE-satwik-SE.github.io/wafv2/wafv2.tf on line: 175
  name  = "web-acl-association-example"
  scope = "REGIONAL"

  default_action {
    allow {}
  }

  visibility_config {
    cloudwatch_metrics_enabled = false
    metric_name                = "friendly-metric-name"
    sampled_requests_enabled   = false
  }
}

resource "aws_wafv2_web_acl_association" "example" { # IPAddressVersion is not configured in file satwik-SE-satwik-SE.github.io/wafv2/wafv2.tf on line: 190
  resource_arn = aws_api_gateway_stage.example.arn
  web_acl_arn  = aws_wafv2_web_acl.example.arn
}

