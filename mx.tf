resource "aws_route53_record" "mail_from" {
  zone_id = local.domain_zone_id
  name    = "envelope"
  type    = "MX"
  ttl     = 3600
  records = ["feedback-smtp.us-east-1.amazonses.com."]
}
