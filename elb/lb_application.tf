resource "aws_lb" "application" { # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 1 # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 1 # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 1 # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 1 # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 1 # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 1 # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 1 # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 1 # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 1 # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 1 # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 1 # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 1 # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 1 # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 1 # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 1
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  # All options # Must be configured
  name_prefix        = "foo"
  internal           = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  load_balancer_type = "application"
  subnets            = [aws_subnet.application.id, aws_subnet.backup.id]
  security_groups    = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  idle_timeout       = 60
  # Prefered value True
  enable_deletion_protection       = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  enable_cross_zone_load_balancing = true
  enable_http2                     = true
  ip_address_type                  = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  drop_invalid_header_fields       = true

  access_logs {
    # All options # Must be configured
    bucket = aws_s3_bucket.foo_lb_logs.bucket
    prefix = "foo-lb"
    # Preferred value true
    enabled = true
  }
 # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 35
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  timeouts {
    create = "10m"
    update = "10m" # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 35
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
    delete = "10m"
  }
 # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 35
  SslPolicy = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  tags = {
    Environment = "production"
  } # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 35
  SslPolicy = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  HealthCheckPort = "traffic-port" # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 52
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  Type = "AWS::ElasticLoadBalancingV2::ListenerRule"
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
}

resource "aws_lb_listener" "application_listener" { # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 35
  SslPolicy = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  HealthCheckPort = "traffic-port" # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 52
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  Type = "AWS::ElasticLoadBalancingV2::ListenerRule"
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  load_balancer_arn = aws_lb.application.arn
  port              = "80"
  protocol          = "HTTPS"

  default_action { # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 52
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  Type = "AWS::ElasticLoadBalancingV2::ListenerRule"
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
    # All options # Must be configured
    type = "fixed-response"

    fixed_response {
      content_type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
      message_body = "Fixed response content" # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 52
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  Type = "AWS::ElasticLoadBalancingV2::ListenerRule"
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
      status_code  = "200" # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 86 # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 86 # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 86
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  Type = "AWS::ElasticLoadBalancingV2::ListenerRule"
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
    }
  }
}

resource "aws_lb_listener" "authenticate" { # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 52
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate" # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 92
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  Type = "AWS::ElasticLoadBalancingV2::ListenerRule"
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  # All options # Must be configured # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 86 # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 86 # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 86
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  load_balancer_arn = aws_lb.application.arn
  port              = "8082"
  protocol          = "HTTPS"
  certificate_arn   = var.certificate_arn

  # This example is based on oidc based authentication User can use coginito config as well # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 92
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  default_action {
    type = "authenticate-oidc"

    authenticate_oidc {
      authentication_request_extra_params = { # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 86 # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 86 # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 86
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
        "foo" = "bar"
      }
      # Preferred value authenticate, deny
      on_unauthenticated_request = "deny"
      session_cookie_name        = "foo"
      session_timeout            = 300 # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 92
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
      client_id                  = var.client_id
      client_secret              = var.client_secret
      issuer                     = "https://oak9.okta.com/oauth2/default" # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 133
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
      token_endpoint             = "https://oak9.okta.com/oauth2/default/v1/token"
      authorization_endpoint     = "https://oak9.okta.com/oauth2/default/v1/authorize" # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 86 # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 86 # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 86
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
      user_info_endpoint         = "https://oak9.okta.com/oauth2/default/v1/userinfo"
    } # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 142 # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 142 # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 142
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  Type = "AWS::ElasticLoadBalancingV2::ListenerRule"
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  }

  default_action {
    type             = "forward" # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 92
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
    target_group_arn = aws_lb_target_group.application.arn # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 150 # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 150 # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 150
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  Type = "AWS::ElasticLoadBalancingV2::ListenerRule"
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  }
} # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 133
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true

resource "aws_lb_listener_certificate" "foo" { # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 86 # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 86 # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 86
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  # All options # Must be configured
  listener_arn    = aws_lb_listener.authenticate.arn # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 142 # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 142 # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 142
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  Type = "AWS::ElasticLoadBalancingV2::ListenerRule"
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  certificate_arn = var.certificate_arn
}

resource "aws_lb_target_group" "application_tg" { # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 92
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  name = "foo-application" # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 150 # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 150 # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 150
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  Type = "AWS::ElasticLoadBalancingV2::ListenerRule"
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  port = 443
  # Preferred value HTTPS for application & TLS for network # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 133
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  protocol                           = "HTTPS"           # Must be configured
  target_type                        = "instance"        # Must be configured
  vpc_id                             = aws_vpc.foo_lb.id # Must be configured
  load_balancing_algorithm_type      = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  slow_start                         = 35
  lambda_multi_value_headers_enabled = false
  # Preferred value true
  proxy_protocol_v2 = false # Must be configured
  # Preferred value less than 60 # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 142 # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 142 # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 142
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  Type = "AWS::ElasticLoadBalancingV2::ListenerRule"
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port" # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 200
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  Type = "AWS::ElasticLoadBalancingV2::ListenerRule"
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  deregistration_delay = 300 # Must be configured

  health_check {
    # All options # Must be configured
    enabled           = true
    healthy_threshold = 3
    interval          = 30
    # Preferred value HTTPS for application & TLS for network # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 150 # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 150 # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 150
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  Type = "AWS::ElasticLoadBalancingV2::ListenerRule"
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
    protocol            = "HTTPS"
    timeout             = 5 # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 133
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
    unhealthy_threshold = 3
    path                = "/health"
    port                = 80
    matcher             = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  }

  stickiness {
    # All options # Must be configured
    cookie_duration = 86400 # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 142 # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 142 # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 142
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  Type = "AWS::ElasticLoadBalancingV2::ListenerRule"
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port" # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 200
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  Type = "AWS::ElasticLoadBalancingV2::ListenerRule"
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
    enabled         = true
    type            = "lb_cookie"
  }

  tags = {
    Environment = "production"
  }
} # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 150 # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 150 # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 150
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  Type = "AWS::ElasticLoadBalancingV2::ListenerRule"
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true

resource "aws_lb_target_group" "backup" { # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 133
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  name                 = "bar-application"
  port                 = 80
  protocol             = "HTTPS"
  target_type          = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  deregistration_delay = 10
  vpc_id               = aws_vpc.foo_lb.id
}

resource "aws_lb_target_group_attachment" "foo" { # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 142 # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 142 # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 142
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  Type = "AWS::ElasticLoadBalancingV2::ListenerRule"
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port" # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 200
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  Type = "AWS::ElasticLoadBalancingV2::ListenerRule"
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  # All options # Must be configured
  target_group_arn  = aws_lb_target_group.backup.arn
  target_id         = "10.20.3.16"
  port              = 80
  availability_zone = "us-east-2a"
}

resource "aws_lb_listener_rule" "forward" { # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 150 # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 150 # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 150
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  Type = "AWS::ElasticLoadBalancingV2::ListenerRule"
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  listener_arn = aws_lb_listener.application.arn # Must be configured
  priority     = 99


  action {
    type = "forward"
    forward {
      target_group {
        arn    = aws_lb_target_group.application_tg.arn
        weight = 80
      }

      target_group {
        arn    = aws_lb_target_group.backup.arn
        weight = 100
      }
      stickiness {
        enabled  = true # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 200
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  Type = "AWS::ElasticLoadBalancingV2::ListenerRule"
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
        duration = 600
      }
    }
  }

  condition {
    path_pattern {
      values = ["/static/*"]
    }
  }

  condition {
    host_header {
      values = ["foo.example.com"] # Must be configured
    }
  }

  condition {
    http_header {
      http_header_name = "X-Forwarded-For" # Must be configured
      values           = ["192.168.1.*"]
    }
  }

  condition {
    source_ip {
      values = ["10.20.3.0/24"]
    }
  }
}

resource "aws_lb_listener_rule" "redirect" { # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_application.tf on line: 200
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  Type = "AWS::ElasticLoadBalancingV2::ListenerRule"
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  listener_arn = aws_lb_listener.application.arn

  action {
    type  = "redirect"
    order = 1

    redirect {
      host = "#{host}"
      path = "/#{path}"
      port = "443" # Must be configured
      # Preferred value HTTPS
      protocol    = "HTTPS" # Must be configured
      status_code = "HTTP_301"
      query       = "#{query}"
    }
  }

  condition {
    http_header {
      http_header_name = "X-Forwarded-For"
      values           = ["192.168.1.*"]
    }
  }

  condition {
    query_string {
      key   = "health"
      value = "check"
    }

    query_string {
      value = "bar"
    }
  }

  condition {
    http_request_method {
      values = ["GET", "POST"]
    }
  }
}
