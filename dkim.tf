locals {
  dkim = tomap({
    "nmm4l6hpw23hz3hdl64wlhkzaa54uvxj._domainkey" : "nmm4l6hpw23hz3hdl64wlhkzaa54uvxj.dkim.amazonses.com.",
    "s6v2xhjhsld3kr5xsn2i34dtlfdsh7qo._domainkey" : "s6v2xhjhsld3kr5xsn2i34dtlfdsh7qo.dkim.amazonses.com.",
    "tz62hby4ayxnp3yckydgeahrzwnos3xw._domainkey" : "tz62hby4ayxnp3yckydgeahrzwnos3xw.dkim.amazonses.com.",
  })
}

resource "aws_route53_record" "dkim" {
  for_each = local.dkim

  zone_id = local.domain_zone_id
  name    = each.key
  type    = "CNAME"
  ttl     = 3600
  records = [each.value]
}
