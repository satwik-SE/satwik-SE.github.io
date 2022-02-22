resource "aws_lb" "network" { # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_network.tf on line: 1 # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_network.tf on line: 1 # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_network.tf on line: 1 # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_network.tf on line: 1 # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_network.tf on line: 1 # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_network.tf on line: 1 # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_network.tf on line: 1 # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_network.tf on line: 1 # Protocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_network.tf on line: 1
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  SslPolicy = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  # All options # Must be configured
  name_prefix                      = "bar"
  internal                         = false
  load_balancer_type               = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  enable_cross_zone_load_balancing = true
  enable_deletion_protection       = false
  # subnets                          = aws_subnet.application.*.id

  # Applicable when internal is true
  # subnet_mapping {
  #   subnet_id            = aws_subnet.application.id
  #   private_ipv4_address = "10.20.3.15"
  # }

  subnet_mapping {
    subnet_id     = aws_subnet.application.id
    allocation_id = aws_eip.bar.id
  }

 # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_network.tf on line: 27
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  Type = "AWS::ElasticLoadBalancingV2::ListenerRule"
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  tags = {
    Environment = "production"
  } # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_network.tf on line: 27
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate" # protocol should be set to any of HTTPS,TLS # protocol should be set to any of HTTPS,TLS
  Type = "AWS::ElasticLoadBalancingV2::ListenerRule"
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
}

resource "aws_lb_listener" "front_end" { # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_network.tf on line: 27
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate" # protocol should be set to any of HTTPS,TLS # protocol should be set to any of HTTPS,TLS # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_network.tf on line: 39
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  Type = "AWS::ElasticLoadBalancingV2::ListenerRule"
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true # protocol should be set to any of HTTPS,TLS # protocol should be set to any of HTTPS,TLS
  # All options # Must be configured
  load_balancer_arn = aws_lb.network.arn
  port              = "80"
  protocol          = "TCP" # protocol should be set to any of HTTPS,TLS # protocol should be set to any of HTTPS,TLS # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_network.tf on line: 39
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08" # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_network.tf on line: 48
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  Type = "AWS::ElasticLoadBalancingV2::ListenerRule"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.network.arn # protocol should be set to any of HTTPS,TLS # protocol should be set to any of HTTPS,TLS
  }
}

resource "aws_lb_target_group" "network" { # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_network.tf on line: 39
  SslPolicy = "ELBSecurityPolicy-FS-1-2-Res-2019-08" # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_network.tf on line: 48
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  Type = "AWS::ElasticLoadBalancingV2::ListenerRule"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  # All options # Must be configured
  name        = "foo-tg-network-lb"
  port        = 80
  protocol    = "TCP" # protocol should be set to any of HTTPS,TLS # protocol should be set to any of HTTPS,TLS
  target_type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  vpc_id      = aws_vpc.foo_lb.id
}

resource "aws_lb_listener" "back_end" { # HealthCheckProtocol is not configured in file satwik-SE-satwik-SE.github.io/elb/lb_network.tf on line: 48
  Type = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
  Type = "AWS::ElasticLoadBalancingV2::ListenerRule"
  HealthCheckPort = "traffic-port"
  LoadBalancerAttributes.Key.deletion_protection.enabled = true
  # All options # Must be configured
  load_balancer_arn = aws_lb.network.arn
  port              = "8082"
  protocol          = "TLS"
  ssl_policy        = "ELBSecurityPolicy-FS-1-2-Res-2019-08" # Must be configured
  certificate_arn   = var.certificate_arn
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.network.arn
  }
}
