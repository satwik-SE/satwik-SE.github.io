resource "aws_elb" "foo" { # Listeners.Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_elb.tf on line: 1 # Listeners.Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_elb.tf on line: 1 # Listeners.Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_elb.tf on line: 1 # Listeners.Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_elb.tf on line: 1 # Listeners.Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_elb.tf on line: 1
  Type = "AWS::ElasticLoadBalancing::LoadBalancer"
  Type = "AWS::ElasticLoadBalancing::LoadBalancer"
  Type = "AWS::ElasticLoadBalancing::LoadBalancer"
  Type = "AWS::ElasticLoadBalancing::LoadBalancer"
  Type = "AWS::ElasticLoadBalancing::LoadBalancer"
  # All options # Must be configured
  name_prefix = "foo"

  # Conflicts with subnets
  # availability_zones = ["us-east-1"]
  internal        = false
  instances       = [aws_instance.bar.id]
  subnets         = [aws_subnet.application.id]
  security_groups = [aws_security_group.bar.id]

  cross_zone_load_balancing   = true
  connection_draining         = true
  connection_draining_timeout = 400 
  idle_timeout                = 400 

  access_logs {
    # All options # Must be configured
    enabled       = true
    bucket        = aws_s3_bucket.foo_lb_logs.id
    bucket_prefix = "logs"
    interval      = 60
  } # listener.instance_protocol should be set to any of SSL,HTTPS
 # listener.instance_protocol should be set to any of SSL,HTTPS
  listener { # listener.instance_protocol should be set to any of SSL,HTTPS
    # All options # Must be configured # listener.instance_protocol should be set to any of SSL,HTTPS
    instance_protocol = "http" # listener.instance_protocol should be set to any of SSL,HTTPS
    instance_port     = 80
    lb_protocol       = "http"
    lb_port           = 80
    # Ssl certificate id must be provided when protocol is https
    # ssl_certificate_id = "arn:aws:iam::000000000000:server-certificate/wu-tang.net"
  }

  health_check {
    # All options # Must be configured
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:80/health"
    interval            = 30
  }

  # Must be present
  tags = {
    Name = "foobar-terraform-elb" # Listeners.Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_elb.tf on line: 50 # aws_elb.listener.instance_protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_elb.tf on line: 50
  Type = "AWS::ElasticLoadBalancing::LoadBalancer"
  } # Listeners.Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_elb.tf on line: 50 # aws_elb.listener.instance_protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_elb.tf on line: 50
  Type = "AWS::ElasticLoadBalancing::LoadBalancer"
} # Listeners.Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_elb.tf on line: 50 # aws_elb.listener.instance_protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_elb.tf on line: 50
  Type = "AWS::ElasticLoadBalancing::LoadBalancer"
 # Listeners.Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_elb.tf on line: 50 # aws_elb.listener.instance_protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_elb.tf on line: 50 # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_elb.tf on line: 55 # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_elb.tf on line: 55 # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_elb.tf on line: 55
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  Type = "AWS::ElasticLoadBalancingV2::ListenerRule"
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  Type = "AWS::ElasticLoadBalancing::LoadBalancer"
resource "aws_elb_attachment" "foo" { # Listeners.Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_elb.tf on line: 50 # aws_elb.listener.instance_protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_elb.tf on line: 50 # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_elb.tf on line: 55 # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_elb.tf on line: 55 # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_elb.tf on line: 55
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  Type = "AWS::ElasticLoadBalancingV2::ListenerRule"
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  Type = "AWS::ElasticLoadBalancing::LoadBalancer"
  elb      = aws_elb.foo.id # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_elb.tf on line: 55 # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_elb.tf on line: 55 # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_elb.tf on line: 55
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  Type = "AWS::ElasticLoadBalancingV2::ListenerRule"
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  instance = aws_instance.bar.id
} # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_elb.tf on line: 55 # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_elb.tf on line: 55 # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_elb.tf on line: 55
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  Type = "AWS::ElasticLoadBalancingV2::ListenerRule"
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true

resource "aws_lb_cookie_stickiness_policy" "foo" { # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_elb.tf on line: 55 # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_elb.tf on line: 55 # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_elb.tf on line: 55
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  Type = "AWS::ElasticLoadBalancingV2::ListenerRule"
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  # All options # Must be configured
  name                     = "foo-policy-cookie"
  load_balancer            = aws_elb.foo.id
  lb_port                  = 80
  cookie_expiration_period = 600
}

resource "aws_app_cookie_stickiness_policy" "foo" {
  # All options # Must be configured
  name          = "foo-app-policy-cookie"
  load_balancer = aws_elb.foo.name
  lb_port       = 80
  cookie_name   = "foo-cookie"
}

resource "aws_load_balancer_backend_server_policy" "foo" {
  # All options # Must be configured
  load_balancer_name = aws_elb.foo.name
  instance_port      = 443

  policy_names = [
    aws_load_balancer_policy.foo.policy_name,
  ]
}

resource "aws_load_balancer_listener_policy" "foo" {
  # All options # Must be configured
  load_balancer_name = aws_elb.foo.name
  load_balancer_port = 80
}

resource "aws_load_balancer_policy" "foo" {
  # All options # Must be configured
  load_balancer_name = aws_elb.foo.name
  policy_name        = "foo-root-ca-backend-auth-policy"
  policy_type_name   = "BackendServerAuthenticationPolicyType"

  policy_attribute {
    name  = "PublicKeyPolicyName"
    value = aws_load_balancer_policy.foo-pubkey.policy_name
  }
}

resource "aws_load_balancer_policy" "foo-pubkey" {
  load_balancer_name = aws_elb.foo.name
  policy_name        = "foo-ca-pubkey-policy"
  policy_type_name   = "PublicKeyPolicyType"

  # The public key of a CA certificate file can be extracted with:
  # $ cat wu-tang-ca.pem | openssl x509 -pubkey -noout | grep -v '\-\-\-\-' | tr -d '\n' > wu-tang-pubkey
  policy_attribute {
    name  = "PublicKey"
    value = file("${path.module}/pubkey")
  }
}