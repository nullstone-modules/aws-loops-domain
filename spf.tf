resource "aws_route53_record" "spf" {
  zone_id = local.domain_zone_id
  name    = "envelope"
  type    = "TXT"
  ttl     = 3600
  records = ["v=spf1 include:amazonses.com ~all"]
}
