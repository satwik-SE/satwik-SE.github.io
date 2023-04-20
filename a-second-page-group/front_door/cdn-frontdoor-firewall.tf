resource "azurerm_cdn_frontdoor_firewall_policy" "sac_frontdoor_firewall_policy" {
  name                = "examplecdnfdwafpolicy"
  resource_group_name = azurerm_resource_group.front_door_rg.name
  sku_name            = azurerm_cdn_frontdoor_profile.sac_testing_frontdoor_profile.sku_name
  enabled = true
  # SaC Testing - Severity:  - Set mode != "Prevention"
  mode = "Detection"

  # SaC Testing - Severity:  - Set tags to undefined
  # tags = {
  #   fdwaftag = "waftag1"
  # }

  depends_on = [
    azurerm_cdn_frontdoor_profile.sac_testing_frontdoor_profile
  ]

  custom_rule {
    name = "RateLimitingRule"
    enabled = true
    priority = 1    # Rate limit rule
    rate_limit_duration_in_minutes = 1  # Rate limit rule
    rate_limit_threshold = 10   # Rate limit rule
    # SaC Testing - Severity:  - Set type to != "RateLimitRule"
    type = "MatchRule"   # MatchRule or RateLimitRule
    # SaC Testing - Severity:  - Set action to != "Block"
    action = "Allow"    # Rate limit rule - Allow, Block, Log, or Redirect.

    match_condition {
      match_variable = "RemoteAddr"   # Cookies, PostArgs, QueryString, RemoteAddr, RequestBody, RequestHeader, RequestMethod, RequestUri, or SocketAddr
      # SaC Testing - Severity:  - Set operator to != 'GeoMatch'
      operator = "Equal"   # Any, BeginsWith, Contains, EndsWith, Equal, GeoMatch, GreaterThan, GreaterThanOrEqual, IPMatch, LessThan, LessThanOrEqual or RegEx.
      negation_condition = false
      match_values = ["US"]
    }

    match_condition {
      match_variable = "RemoteAddr"   # Cookies, PostArgs, QueryString, RemoteAddr, RequestBody, RequestHeader, RequestMethod, RequestUri, or SocketAddr.
      # SaC Testing - Severity:  - Set operator to != 'IPMatch'
      operator = "Contains"  # Any, BeginsWith, Contains, EndsWith, Equal, GeoMatch, GreaterThan, GreaterThanOrEqual, IPMatch, LessThan, LessThanOrEqual or RegEx.
      negation_condition = false
      match_values = ["192.168.1.0/24", "10.0.0.0/24"]
    }
  }

    managed_rule {    # Needs premium sku
      # SaC Testing - Severity: Moderate - Set type to "DefaultRuleSet"
      type = "DefaultRuleSet"     # DefaultRuleSet, Microsoft_DefaultRuleSet, BotProtection, Microsoft_BotManagerRuleSet
      version = "1.0"
      action = "Allow"

      # SaC Testing - Severity: Moderate - Set override to defined
      override {
        rule_group_name = "PHP"

        rule {
          rule_id = "933100"
          enabled = false
          action  = "Block"
        }
      }
  }
}