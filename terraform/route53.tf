resource "aws_route53_zone" "main" {
  name = "simplewebapp.com"
}

resource "aws_route53_zone" "dev" {
  name = "dev.simplewebapp.com"

  tags = {
    Environment = "dev"
  }
}

resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.dev.zone_id
  name    = "dev.simplewebapp.com"
  type    = "A"

  alias {
    name                   = module.test-web-app.aws_lb_lb_dns_name
    zone_id                = module.test-web-app.aws_lb_lb_zone_id
    evaluate_target_health = true
  }
}